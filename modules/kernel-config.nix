{ config, lib, options, pkgs, ... }:

let
  inherit (lib)
    mkOption
    types
    ;
in
{
  options = {
    mobile = {
      kernel = {
        structuredConfig = mkOption {
          type = with types; listOf (functionTo attrs);
          description = ''
            Functions returning kernel structured config.

            The functions take one argument, an attrset of helpers.
            These helpers are expected to be used with `with`, they
            provide the `yes`, `no`, `whenOlder` and similar helpers
            from `lib.kernel`.

            The `whenHelpers` are configured with the appropriate
            version already.
          '';
        };
      };
    };
  };

  config = {
    mobile.kernel.structuredConfig = [
      # Basic universal options
      (helpers: with helpers; {
        LOCALVERSION = lib.mkDefault (freeform ''""'');
        # POSIX_ACL and XATTR are generally needed.
        TMPFS = yes;
        TMPFS_POSIX_ACL = yes;
        TMPFS_XATTR = yes;

        RD_GZIP = yes;
        RD_XZ = yes;

        # Executive decision that EXT4 is required.
        EXT4_FS = yes;
        EXT4_FS_POSIX_ACL = yes;

        # Required config for Nix
        NAMESPACES = yes;
        USER_NS = yes;
        PID_NS = yes;

        # Additional options
        SYSVIPC = yes;

        # Options from Android kernels that break stuff
        # While not *universally available*, it's universally required to
        # be turned off.
        ANDROID_PARANOID_NETWORK = no;
      })
      # Needed for systemd
      (helpers: with helpers; {
        # Kernel configuration as required by systemd
        # As of https://github.com/systemd/systemd/blob/4917c15af7c2dfe553b8e0dbf22b4fb7cec958de/README#L35
        DEVTMPFS = yes;
        CGROUPS = yes;
        INOTIFY_USER = yes;
        SIGNALFD = yes;
        TIMERFD = yes;
        EPOLL = yes;
        NET = yes;
        UNIX = yes;
        SYSFS = yes;
        PROC_FS = yes;
        FHANDLE = yes;
        CRYPTO_USER_API_HASH = yes;
        CRYPTO_HMAC = yes;
        CRYPTO_SHA256 = yes;
        SYSFS_DEPRECATED = no;
        UEVENT_HELPER = no;
        FW_LOADER_USER_HELPER = option no;
        SCSI = yes;
        BLK_DEV_BSG = yes;
        DEVPTS_MULTIPLE_INSTANCES = whenOlder "4.7" yes;
      })
      # Network
      (helpers: with helpers; {
        NETFILTER_FAMILY_BRIDGE = yes;
        NETFILTER_XT_MATCH_PKTTYPE = yes;
        NETFILTER_XT_MATCH_COMMENT = yes;
        NETFILTER_XT_MARK = yes;
        NETFILTER_XT_CONNMARK = yes;
        NF_TABLES = yes;
        NF_TABLES_INET = yes;
        NF_TABLES_NETDEV = yes;
        NFT_NUMGEN = yes;
        NFT_CT = yes;
        NFT_CONNLIMIT = yes;
        NFT_LOG = yes;
        NFT_LIMIT = yes;
        NFT_MASQ = yes;
        NFT_REDIR = yes;
        NFT_NAT = yes;
        NFT_TUNNEL = yes;
        NFT_OBJREF = yes;
        NFT_QUOTA = yes;
        NFT_REJECT = yes;
        NFT_REJECT_INET = yes;
        NFT_COMPAT = yes;
        NFT_HASH = yes;
        NFT_SOCKET = yes;
        NFT_OSF = yes;
        NFT_TPROXY = yes;
        NFT_SYNPROXY = yes;
        NF_DUP_NETDEV = yes;
        NFT_DUP_NETDEV = yes;
        NFT_FWD_NETDEV = yes;
        NFT_REJECT_NETDEV = yes;
        NF_TPROXY_IPV4 = yes;
        NF_TABLES_IPV4 = yes;
        NFT_REJECT_IPV4 = yes;
        NF_TPROXY_IPV6 = yes;
        NF_TABLES_IPV6 = yes;
        NFT_REJECT_IPV6 = yes;
        NF_TABLES_BRIDGE = yes;
        NFT_BRIDGE_META = yes;
        NFT_BRIDGE_REJECT = yes;
        NF_CONNTRACK_BRIDGE = yes;
        NF_CONNTRACK = yes;

        WIREGUARD = yes;
      })
      # Needed for waydroid
      (helpers: with helpers; let
        inherit (lib) mkMerge;
        # TODO drop when we fix modular kernels
        module = yes;
      in
      {
        ANDROID = whenBetween "3.19" "6.0" yes;
        ANDROID_BINDER_IPC = whenAtLeast "3.19" yes;
        ANDROID_BINDERFS = whenAtLeast "5.0" yes;

        # Needed for waydroid networking to function
        IP_ADVANCED_ROUTER = yes;
        IP_MULTIPLE_TABLES = yes;
        IPV6_MULTIPLE_TABLES = yes;

        # Needed for XfrmController
        XFRM = yes;
        XFRM_ALGO = whenAtLeast "3.5" module;
        XFRM_USER = module;

        # netd uses NFLOG
        NETFILTER_NETLINK = yes;
        NETFILTER_NETLINK_LOG = yes;
        NETFILTER_XT_TARGET_NFLOG = module;
      })
    ];

    nixpkgs.overlays = [
      (final: super: {
        systemBuild-structuredConfig = version:
          let
            helpers = lib.kernel // (lib.kernel.whenHelpers version);
            structuredConfig =
              lib.mkMerge
                (map (fn: fn helpers) config.mobile.kernel.structuredConfig)
            ;
          in
          structuredConfig
        ;
      })
    ];
  };
}
