{ mobile-nixos
, fetchpatch
, fetchFromGitLab
, ...
}:

mobile-nixos.kernel-builder {
  version = "6.1.0";
  configfile = ./config.aarch64;

  src = fetchFromGitLab {
    owner = "pine64-org";
    repo = "linux";
    rev = "ppp-6.1-20221212-1243";
    sha256 = "sha256-hxSiHRVWTxZ0Z2yCZXEi4plow838vxdv10M/aQVuhT0=";
  };

  patches = [
    ./0001-HACK-always-show-logo.patch
    ./0001-arm64-dts-rockchip-set-type-c-dr_mode-as-otg.patch
    ./0001-dts-pinephone-pro-Setup-default-on-and-panic-LEDs.patch
    ./0001-usb-dwc3-Enable-userspace-role-switch-control.patch
  ];

  postInstall = ''
    echo ":: Installing FDTs"
    mkdir -p $out/dtbs/rockchip
    cp -v "$buildRoot/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dtb" "$out/dtbs/rockchip/"
  '';

  isModular = false;
  isCompressed = false;
}
