{ mobile-nixos
, fetchpatch
, fetchFromGitHub
, ...
}:

mobile-nixos.kernel-builder {
  version = "6.1.7";
  configfile = ./config.aarch64;

  src = fetchFromGitHub {
    owner = "megous";
    repo = "linux";
    rev = "aa3e5fabfb690946cab52a6ea8de32c3a1fc75e8";
    sha256 = "sha256-yjxl/KHqC3lfE4bgPbLr1eFij6JFjCesiCIQPn0XnAA=";
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
