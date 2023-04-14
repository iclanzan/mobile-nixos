(helpers: with helpers; {
  WIRELESS = yes;
  WLAN = yes;
  WLAN_VENDOR_BROADCOM = yes;
  BRCMUTIL = yes;
  BRCMFMAC_SDIO = yes;
  BRCMSMAC = yes;
  BRCM_TRACING = yes;
  BRCMDBG = yes;

  SYSVIPC = yes;
  POSIX_MQUEUE = yes;
  WATCH_QUEUE = yes;
  GENERIC_IRQ_DEBUGFS = yes;
  NO_HZ = yes;
  HIGH_RES_TIMERS = yes;
  BPF_SYSCALL = yes;
  BPF_JIT = yes;
  PREEMPT_VOLUNTARY = yes;
  BSD_PROCESS_ACCT = yes;
  BSD_PROCESS_ACCT_V3 = yes;
  TASKSTATS = yes;
  TASK_DELAY_ACCT = yes;
  TASK_XACCT = yes;
  TASK_IO_ACCOUNTING = yes;
  PSI = yes;
  IKCONFIG = yes;
  IKCONFIG_PROC = yes;
  LOG_BUF_SHIFT = freeform "20";
  CGROUPS = yes;
  MEMCG = yes;
  BLK_CGROUP = yes;
  CGROUP_SCHED = yes;
  CGROUP_PIDS = yes;
  CPUSETS = yes;
  CGROUP_DEVICE = yes;
  CGROUP_BPF = yes;
  USER_NS = yes;
  KALLSYMS_ALL = yes;
  PERF_EVENTS = yes;
  ARCH_ROCKCHIP = yes;
  ARM64_VA_BITS_48 = yes;
  SCHED_MC = yes;
  NR_CPUS = freeform "8";
  HZ_1000 = yes;
  PARAVIRT = yes;
  COMPAT = yes;
  ARM64_PMEM = yes;
  PM_WAKELOCKS = yes;
  PM_DEBUG = yes;
  WQ_POWER_EFFICIENT_DEFAULT = yes;
  ENERGY_MODEL = yes;
  CPU_IDLE = yes;
  CPU_IDLE_GOV_LADDER = yes;
  ARM_PSCI_CPUIDLE = yes;
  CPU_FREQ = yes;
  CPU_FREQ_STAT = yes;
  CPU_FREQ_DEFAULT_GOV_PERFORMANCE = yes;
  CPU_FREQ_GOV_POWERSAVE = yes;
  CPU_FREQ_GOV_USERSPACE = yes;
  CPU_FREQ_GOV_ONDEMAND = yes;
  CPU_FREQ_GOV_CONSERVATIVE = yes;
  CPU_FREQ_GOV_SCHEDUTIL = yes;
  CPUFREQ_DT = yes;
  ARM_SCPI_CPUFREQ = yes;
  ARM_SCMI_CPUFREQ = yes;
  VIRTUALIZATION = yes;
  KVM = yes;
  JUMP_LABEL = yes;
  MODULES = yes;
  MODULE_UNLOAD = yes;
  MODVERSIONS = yes;
  BLK_DEV_INTEGRITY = yes;
  BLK_DEV_THROTTLING = yes;
  BLK_WBT = yes;
  BLK_CGROUP_IOLATENCY = yes;
  BLK_CGROUP_IOCOST = yes;
  PARTITION_ADVANCED = yes;
  TRANSPARENT_HUGEPAGE = yes;
  CMA = yes;
  CMA_DEBUGFS = yes;
  CMA_SYSFS = yes;
  NET = yes;
  PACKET = yes;
  PACKET_DIAG = yes;
  UNIX = yes;
  UNIX_DIAG = yes;
  XFRM_USER = yes;
  NET_KEY = yes;
  INET = yes;
  IP_MULTICAST = yes;
  IP_ADVANCED_ROUTER = yes;
  IP_MULTIPLE_TABLES = yes;
  INET_UDP_DIAG = yes;
  INET_RAW_DIAG = yes;
  NETFILTER = yes;
  NETFILTER_NETLINK_QUEUE = yes;
  NETFILTER_NETLINK_LOG = yes;
  NF_CONNTRACK = yes;
  NF_CONNTRACK_MARK = yes;
  NF_CONNTRACK_EVENTS = yes;
  NF_CONNTRACK_TIMEOUT = yes;
  NF_CONNTRACK_TIMESTAMP = yes;
  NF_CONNTRACK_LABELS = yes;
  NF_CONNTRACK_FTP = yes;
  NF_CONNTRACK_H323 = yes;
  NF_CONNTRACK_IRC = yes;
  NF_CONNTRACK_NETBIOS_NS = yes;
  NF_CONNTRACK_SNMP = yes;
  NF_CONNTRACK_PPTP = yes;
  NF_CONNTRACK_SIP = yes;
  NF_CONNTRACK_TFTP = yes;
  NF_CT_NETLINK = yes;
  NETFILTER_NETLINK_GLUE_CT = yes;
  NF_TABLES = yes;
  NF_TABLES_INET = yes;
  NF_TABLES_NETDEV = yes;
  NFT_NUMGEN = yes;
  NFT_CT = yes;
  NFT_FLOW_OFFLOAD = yes;
  NFT_CONNLIMIT = yes;
  NFT_LOG = yes;
  NFT_LIMIT = yes;
  NFT_MASQ = yes;
  NFT_REDIR = yes;
  NFT_NAT = yes;
  NFT_TUNNEL = yes;
  NFT_OBJREF = yes;
  NFT_QUEUE = yes;
  NFT_QUOTA = yes;
  NFT_REJECT = yes;
  NFT_HASH = yes;
  NFT_FIB_INET = yes;
  NFT_SOCKET = yes;
  NFT_OSF = yes;
  NFT_TPROXY = yes;
  NFT_SYNPROXY = yes;
  NFT_DUP_NETDEV = yes;
  NFT_FWD_NETDEV = yes;
  NFT_FIB_NETDEV = yes;
  NFT_REJECT_NETDEV = yes;
  NF_FLOW_TABLE_INET = yes;
  NF_FLOW_TABLE = yes;
  IP_SET = yes;
  IP_SET_BITMAP_IP = yes;
  IP_SET_BITMAP_IPMAC = yes;
  IP_SET_BITMAP_PORT = yes;
  IP_SET_HASH_IP = yes;
  IP_SET_HASH_IPMARK = yes;
  IP_SET_HASH_IPPORT = yes;
  IP_SET_HASH_IPPORTIP = yes;
  IP_SET_HASH_IPPORTNET = yes;
  IP_SET_HASH_IPMAC = yes;
  IP_SET_HASH_MAC = yes;
  IP_SET_HASH_NETPORTNET = yes;
  IP_SET_HASH_NET = yes;
  IP_SET_HASH_NETNET = yes;
  IP_SET_HASH_NETPORT = yes;
  IP_SET_HASH_NETIFACE = yes;
  IP_SET_LIST_SET = yes;
  NFT_FIB_IPV4 = yes;
  NF_TABLES_ARP = yes;
  NF_LOG_ARP = yes;
  NF_LOG_IPV4 = yes;
  NFT_DUP_IPV6 = yes;
  NFT_FIB_IPV6 = yes;
  NF_LOG_IPV6 = yes;
  BPFILTER = yes;
  # BPFILTER_UMH = yes;
  BRIDGE = yes;
  VLAN_8021Q = yes;
  VLAN_8021Q_GVRP = yes;
  VLAN_8021Q_MVRP = yes;
  NET_SCHED = yes;
  NET_SCH_CBQ = yes;
  NET_SCH_HTB = yes;
  NET_SCH_HFSC = yes;
  NET_CLS_BASIC = yes;
  NET_CLS_TCINDEX = yes;
  NET_CLS_ROUTE4 = yes;
  NET_CLS_FW = yes;
  NET_CLS_CGROUP = yes;
  NET_CLS_MATCHALL = yes;
  NET_CLS_ACT = yes;
  NET_ACT_POLICE = yes;
  NET_ACT_GACT = yes;
  NETLINK_DIAG = yes;
  CGROUP_NET_PRIO = yes;
  BT = yes;
  # BT_RFCOMM = yes;
  # BT_RFCOMM_TTY = yes;
  # BT_BNEP = yes;
  # BT_BNEP_MC_FILTER = yes;
  # BT_BNEP_PROTO_FILTER = yes;
  # BT_HIDP = yes;
  # BT_HS = yes;
  BT_LEDS = yes;
  BT_HCIUART = yes;
  BT_HCIUART_BCM = yes;
  CFG80211 = yes;
  CFG80211_DEBUGFS = yes;
  CFG80211_WEXT = yes;
  MAC80211 = yes;
  MAC80211_MESH = yes;
  MAC80211_LEDS = yes;
  RFKILL = yes;
  RFKILL_GPIO = yes;
  PCI = yes;
  PCIEPORTBUS = yes;
  PCIEAER = yes;
  PCIE_PTM = yes;
  PCI_DEBUG = yes;
  PCI_PRI = yes;
  PCI_PASID = yes;
  PCIE_ROCKCHIP_HOST = yes;
  DEVTMPFS = yes;
  DEVTMPFS_MOUNT = yes;
  ARM_SCMI_PROTOCOL = yes;
  ARM_SCPI_PROTOCOL = yes;
  MTD = yes;
  MTD_SPI_NOR = yes;
  ZRAM = yes;
  ZRAM_WRITEBACK = yes;
  ZRAM_MEMORY_TRACKING = yes;
  BLK_DEV_LOOP = yes;
  BLK_DEV_NBD = yes;
  SRAM = yes;
  MODEM_POWER = yes;
  BLK_DEV_SD = yes;
  ATA = yes;
  SATA_AHCI = yes;
  SATA_AHCI_PLATFORM = yes;
  MD = yes;
  BLK_DEV_DM = yes;
  DM_CRYPT = yes;
  DM_INIT = yes;
  DM_UEVENT = yes;
  NETDEVICES = yes;
  WIREGUARD = yes;
  TUN = yes;
  VETH = yes;
  # IGB = yes;
  # IGBVF = yes;
  # STMMAC_ETH = yes;
  # DWMAC_DWC_QOS_ETH = yes;
  LED_TRIGGER_PHY = yes;
  MOTORCOMM_PHY = yes;
  ROCKCHIP_PHY = yes;
  USB_RTL8152 = yes;
  USB_USBNET = yes;
  USB_NET_CDC_EEM = yes;
  USB_NET_CDC_MBIM = yes;
  BRCMFMAC = yes;
  INPUT_MOUSEDEV = yes;
  INPUT_MOUSEDEV_PSAUX = yes;
  INPUT_EVDEV = yes;
  KEYBOARD_ADC = yes;
  KEYBOARD_GPIO = yes;
  KEYBOARD_GPIO_POLLED = yes;
  KEYBOARD_PINEPHONE = yes;
  INPUT_TOUCHSCREEN = yes;
  # Touchscreen
  TOUCHSCREEN_GOODIX = yes;
  INPUT_MISC = yes;
  # Vibrate motor
  INPUT_GPIO_VIBRA = yes;
  INPUT_UINPUT = yes;
  INPUT_RK805_PWRKEY = yes;
  SERIAL_8250 = yes;
  SERIAL_8250_CONSOLE = yes;
  SERIAL_8250_NR_UARTS = freeform "8";
  SERIAL_8250_RUNTIME_UARTS = freeform "8";
  SERIAL_8250_DW = yes;
  SERIAL_OF_PLATFORM = yes;
  SERIAL_AMBA_PL011 = yes;
  SERIAL_AMBA_PL011_CONSOLE = yes;
  SERIAL_DEV_BUS = yes;
  I2C_CHARDEV = yes;
  I2C_GPIO = yes;
  I2C_RK3X = yes;
  SPI = yes;
  SPI_ROCKCHIP = yes;
  SYSCON_REBOOT_MODE = yes;
  IP5XXX_POWER = yes;
  CHARGER_GPIO = yes;
  CHARGER_RK818 = yes;
  SENSORS_ARM_SCMI = yes;
  SENSORS_ARM_SCPI = yes;
  SENSORS_GPIO_FAN = yes;
  THERMAL = yes;
  THERMAL_STATISTICS = yes;
  THERMAL_WRITABLE_TRIPS = yes;
  THERMAL_GOV_FAIR_SHARE = yes;
  THERMAL_GOV_BANG_BANG = yes;
  CPU_THERMAL = yes;
  DEVFREQ_THERMAL = yes;
  ROCKCHIP_THERMAL = yes;
  WATCHDOG = yes;
  DW_WATCHDOG = yes;
  MFD_RK808 = yes;
  REGULATOR = yes;
  REGULATOR_FIXED_VOLTAGE = yes;
  REGULATOR_FAN53555 = yes;
  REGULATOR_GPIO = yes;
  REGULATOR_PWM = yes;
  REGULATOR_RK808 = yes;
  MEDIA_SUPPORT = yes;
  MEDIA_CAMERA_SUPPORT = yes;
  MEDIA_PLATFORM_SUPPORT = yes;
  VIDEO_ADV_DEBUG = yes;
  V4L2_FLASH_LED_CLASS = yes;
  V4L_PLATFORM_DRIVERS = yes;
  V4L_MEM2MEM_DRIVERS = yes;
  VIDEO_MEM2MEM_DEINTERLACE = yes;
  VIDEO_ROCKCHIP_RGA = yes;
  VIDEO_ROCKCHIP_ISP1 = yes;
  VIDEO_HANTRO = yes;
  VIDEO_IMX258 = yes;
  VIDEO_OV8858 = yes;
  VIDEO_DW9714 = yes;
  DRM = yes;
  DRM_LOAD_EDID_FIRMWARE = yes;
  DRM_ROCKCHIP = yes;
  ROCKCHIP_ANALOGIX_DP = yes;
  ROCKCHIP_CDN_DP = yes;
  ROCKCHIP_DW_HDMI = yes;
  ROCKCHIP_DW_MIPI_DSI = yes;
  ROCKCHIP_INNO_HDMI = yes;
  ROCKCHIP_LVDS = yes;
  ROCKCHIP_RGB = yes;
  # Display
  DRM_PANEL_HIMAX_HX8394 = yes;
  DRM_CDNS_DSI = yes;
  DRM_DISPLAY_CONNECTOR = yes;
  DRM_SIMPLE_BRIDGE = yes;
  DRM_PANFROST = yes;
  FB = yes;
  BACKLIGHT_CLASS_DEVICE = yes;
  BACKLIGHT_PWM = yes;
  FRAMEBUFFER_CONSOLE_ROTATION = yes;
  LOGO = yes;
  SOUND = yes;
  SND = yes;
  SND_OSSEMUL = yes;
  SND_MIXER_OSS = yes;
  SND_PCM_OSS = yes;
  SND_HRTIMER = yes;
  SND_USB_AUDIO = yes;
  SND_SOC = yes;
  SND_SOC_ROCKCHIP = yes;
  SND_SOC_ROCKCHIP_I2S_TDM = yes;
  SND_SOC_ROCKCHIP_PDM = yes;
  SND_SOC_RK3399_GRU_SOUND = yes;
  SND_SOC_BT_SCO = yes;
  SND_SOC_RT5640 = yes;
  SND_SOC_SIMPLE_AMPLIFIER = yes;
  SND_SIMPLE_CARD = yes;
  SND_AUDIO_GRAPH_CARD = yes;
  HID_MULTITOUCH = yes;
  HIDRAW = yes;
  USB_HIDDEV = yes;
  USB_LED_TRIG = yes;
  USB_ULPI_BUS = yes;
  USB_CONN_GPIO = yes;
  USB = yes;
  USB_ANNOUNCE_NEW_DEVICES = yes;
  USB_OTG = yes;
  USB_OTG_FSM = yes;
  USB_LEDS_TRIGGER_USBPORT = yes;
  USB_XHCI_HCD = yes;
  USB_EHCI_HCD = yes;
  USB_EHCI_HCD_PLATFORM = yes;
  USB_OHCI_HCD = yes;
  USB_OHCI_HCD_PLATFORM = yes;
  USB_ACM = yes;
  USB_STORAGE = yes;
  USB_UAS = yes;
  USB_DWC3 = yes;
  USB_DWC3_ULPI = yes;
  USB_SERIAL = yes;
  USB_SERIAL_SIMPLE = yes;
  USB_SERIAL_QCAUX = yes;
  USB_SERIAL_QUALCOMM = yes;
  USB_SERIAL_OPTION = yes;
  NOP_USB_XCEIV = yes;
  USB_GADGET = yes;
  USB_GADGET_VBUS_DRAW = freeform "500";
  U_SERIAL_CONSOLE = yes;
  USB_CONFIGFS = yes;
  USB_CONFIGFS_SERIAL = yes;
  USB_CONFIGFS_ACM = yes;
  USB_CONFIGFS_OBEX = yes;
  USB_CONFIGFS_NCM = yes;
  USB_CONFIGFS_ECM = yes;
  USB_CONFIGFS_ECM_SUBSET = yes;
  USB_CONFIGFS_RNDIS = yes;
  USB_CONFIGFS_EEM = yes;
  USB_CONFIGFS_MASS_STORAGE = yes;
  USB_CONFIGFS_F_LB_SS = yes;
  USB_CONFIGFS_F_FS = yes;
  USB_CONFIGFS_F_UAC1 = yes;
  USB_CONFIGFS_F_UAC2 = yes;
  USB_CONFIGFS_F_MIDI = yes;
  USB_CONFIGFS_F_HID = yes;
  USB_CONFIGFS_F_UVC = yes;
  USB_CONFIGFS_F_PRINTER = yes;
  TYPEC = yes;
  TYPEC_TCPM = yes;
  TYPEC_TCPCI = yes;
  TYPEC_FUSB302 = yes;
  TYPEC_UCSI = yes;
  TYPEC_EXTCON = yes;
  TYPEC_DP_ALTMODE = yes;
  MMC = yes;
  MMC_SDHCI = yes;
  MMC_SDHCI_PLTFM = yes;
  # eMMC
  MMC_SDHCI_OF_ARASAN = yes;
  MMC_DW = yes;
  MMC_DW_ROCKCHIP = yes;
  NEW_LEDS = yes;
  LEDS_CLASS = yes;
  LEDS_CLASS_FLASH = yes;
  LEDS_GPIO = yes;
  LEDS_SGM3140 = yes;
  LEDS_TRIGGER_TIMER = yes;
  LEDS_TRIGGER_ONESHOT = yes;
  LEDS_TRIGGER_HEARTBEAT = yes;
  LEDS_TRIGGER_CPU = yes;
  LEDS_TRIGGER_ACTIVITY = yes;
  LEDS_TRIGGER_GPIO = yes;
  LEDS_TRIGGER_DEFAULT_ON = yes;
  LEDS_TRIGGER_PANIC = yes;
  LEDS_TRIGGER_NETDEV = yes;
  LEDS_TRIGGER_PATTERN = yes;
  RTC_CLASS = yes;
  RTC_DRV_RK808 = yes;
  DMADEVICES = yes;
  PL330_DMA = yes;
  DMABUF_HEAPS = yes;
  DMABUF_HEAPS_SYSTEM = yes;
  DMABUF_HEAPS_CMA = yes;
  STAGING = yes;
  STAGING_MEDIA = yes;
  VIDEO_ROCKCHIP_VDEC = yes;
  COMMON_CLK_RK808 = yes;
  COMMON_CLK_SCMI = yes;
  COMMON_CLK_SCPI = yes;
  COMMON_CLK_PWM = yes;
  MAILBOX = yes;
  ROCKCHIP_MBOX = yes;
  IOMMU_IO_PGTABLE_ARMV7S = yes;
  ROCKCHIP_IOMMU = yes;
  ARM_SMMU = yes;
  ARM_SMMU_V3 = yes;
  ROCKCHIP_IODOMAIN = yes;
  ROCKCHIP_PM_DOMAINS = yes;
  DEVFREQ_GOV_PERFORMANCE = yes;
  DEVFREQ_GOV_POWERSAVE = yes;
  DEVFREQ_GOV_USERSPACE = yes;
  DEVFREQ_GOV_PASSIVE = yes;
  ARM_RK3399_DMC_DEVFREQ = yes;
  EXTCON_ADC_JACK = yes;
  EXTCON_GPIO = yes;
  EXTCON_USB_GPIO = yes;
  IIO = yes;
  IIO_SW_DEVICE = yes;
  IIO_SW_TRIGGER = yes;
  ROCKCHIP_SARADC = yes;
  INV_MPU6050_I2C = yes;
  # Light sensor
  STK3310 = yes;
  AF8133J = yes;
  PWM = yes;
  PWM_ROCKCHIP = yes;
  PHY_ROCKCHIP_DP = yes;
  PHY_ROCKCHIP_DPHY_RX0 = yes;
  PHY_ROCKCHIP_EMMC = yes;
  PHY_ROCKCHIP_INNO_HDMI = yes;
  PHY_ROCKCHIP_INNO_USB2 = yes;
  PHY_ROCKCHIP_INNO_CSIDPHY = yes;
  PHY_ROCKCHIP_INNO_DSIDPHY = yes;
  PHY_ROCKCHIP_PCIE = yes;
  PHY_ROCKCHIP_TYPEC = yes;
  PHY_ROCKCHIP_USB = yes;
  ARM_CCI_PMU = yes;
  TEE = yes;
  OPTEE = yes;
  VALIDATE_FS_PARSER = yes;
  EXT4_FS = yes;
  EXT4_FS_POSIX_ACL = yes;
  F2FS_FS = yes;
  F2FS_FS_SECURITY = yes;
  F2FS_CHECK_FS = yes;
  F2FS_FS_COMPRESSION = yes;
  FS_ENCRYPTION = yes;
  FANOTIFY = yes;
  AUTOFS_FS = yes;
  FUSE_FS = yes;
  CUSE = yes;
  OVERLAY_FS = yes;
  OVERLAY_FS_INDEX = yes;
  OVERLAY_FS_METACOPY = yes;
  VFAT_FS = yes;
  PROC_CHILDREN = yes;
  TMPFS = yes;
  TMPFS_POSIX_ACL = yes;
  ECRYPT_FS = yes;
  ECRYPT_FS_MESSAGING = yes;
  SQUASHFS = yes;
  SQUASHFS_FILE_DIRECT = yes;
  SQUASHFS_DECOMP_MULTI = yes;
  SQUASHFS_XATTR = yes;
  SQUASHFS_LZ4 = yes;
  SQUASHFS_LZO = yes;
  SQUASHFS_XZ = yes;
  SQUASHFS_ZSTD = yes;
  NLS_CODEPAGE_437 = yes;
  NLS_CODEPAGE_852 = yes;
  NLS_ISO8859_1 = yes;
  NLS_ISO8859_2 = yes;
  NLS_UTF8 = yes;
  KEYS_REQUEST_CACHE = yes;
  PERSISTENT_KEYRINGS = yes;
  BIG_KEYS = yes;
  ENCRYPTED_KEYS = yes;
  KEY_DH_OPERATIONS = yes;
  # LSM = freeform "yama,loadpin,safesetid,integrity,selinux,smack,tomoyo,apparmor";
  INIT_STACK_NONE = yes;
  CRYPTO_USER = yes;
  CRYPTO_PCRYPT = yes;
  CRYPTO_CRYPTD = yes;
  CRYPTO_CURVE25519 = yes;
  CRYPTO_DES = yes;
  CRYPTO_ARC4 = yes;
  CRYPTO_CHACHA20POLY1305 = yes;
  CRYPTO_SEQIV = yes;
  CRYPTO_ECHAINIV = yes;
  CRYPTO_BLAKE2B = yes;
  CRYPTO_MD4 = yes;
  CRYPTO_DEFLATE = yes;
  CRYPTO_LZO = yes;
  CRYPTO_LZ4 = yes;
  CRYPTO_ZSTD = yes;
  CRYPTO_ANSI_CPRNG = yes;
  CRYPTO_USER_API_HASH = yes;
  CRYPTO_USER_API_SKCIPHER = yes;
  CRYPTO_USER_API_RNG = yes;
  CRYPTO_USER_API_AEAD = yes;
  CRYPTO_NHPOLY1305_NEON = yes;
  CRYPTO_GHASH_ARM64_CE = yes;
  CRYPTO_SHA1_ARM64_CE = yes;
  CRYPTO_SHA2_ARM64_CE = yes;
  CRYPTO_SHA512_ARM64_CE = yes;
  CRYPTO_SHA3_ARM64 = yes;
  CRYPTO_SM3_ARM64_CE = yes;
  CRYPTO_AES_ARM64 = yes;
  CRYPTO_AES_ARM64_CE_BLK = yes;
  CRYPTO_AES_ARM64_BS = yes;
  CRYPTO_SM4_ARM64_CE = yes;
  CRYPTO_AES_ARM64_CE_CCM = yes;
  CRYPTO_CRCT10DIF_ARM64_CE = yes;
  CRYPTO_DEV_ROCKCHIP = yes;
  PKCS8_PRIVATE_KEY_PARSER = yes;
  CORDIC = yes;
  DMA_CMA = yes;
  DMA_PERNUMA_CMA = yes;
  CMA_SIZE_MBYTES = freeform "64";
  FONTS = yes;
  FONT_8x16 = yes;
  FONT_SUN12x22 = yes;
  FONT_TER16x32 = yes;
  CONSOLE_LOGLEVEL_DEFAULT = freeform "15";
  MESSAGE_LOGLEVEL_DEFAULT = freeform "7";
  DYNAMIC_DEBUG = yes;
  DEBUG_KERNEL = yes;
  FRAME_WARN = freeform "1024";
  MAGIC_SYSRQ = yes;
  DEBUG_FS = yes;
  PANIC_ON_OOPS = yes;
  SOFTLOCKUP_DETECTOR = yes;
  BOOTPARAM_SOFTLOCKUP_PANIC = yes;
  # BOOTPARAM_HUNG_TASK_PANIC = yes;
  WQ_WATCHDOG = yes;
  # BOOTTIME_TRACING = yes;
  # FUNCTION_TRACER = yes;
  # FTRACE_SYSCALLS = yes;
  # TRACER_SNAPSHOT = yes;
  # SYNTH_EVENTS = yes;
})
