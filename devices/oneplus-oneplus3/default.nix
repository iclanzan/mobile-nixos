{ config, lib, pkgs, ... }:

{
  mobile.device.name = "oneplus-oneplus3";
  mobile.device.identity = {
    name = "OnePlus 3";
    manufacturer = "OnePlus";
  };

  mobile.hardware = {
    soc = "qualcomm-msm8996";
    ram = 1024 * 6;
    screen = {
      width = 1080; height = 1920;
    };
  };

  mobile.boot.stage-1 = {
    kernel.package = pkgs.callPackage ./kernel { };
  };

  mobile.device.firmware = pkgs.callPackage ./firmware {};
  # Firmware is not enabled by default since it requires manually providing unredistributable files.
  mobile.device.enableFirmware = false;

  mobile.system.android.device_name = "OnePlus3";
  mobile.system.android.bootimg = {
    flash = {
      offset_base = "0x80000000";
      offset_kernel = "0x00008000";
      offset_ramdisk = "0x01000000";
      offset_second = "0x00f00000";
      offset_tags = "0x00000100";
      pagesize = "4096";
    };
  };

  boot.kernelParams = [
    "androidboot.hardware=qcom"
    "user_debug=31"
    "msm_rtb.filter=0x237"
    "ehci-hcd.park=3"
    "lpm_levels.sleep_disabled=1"
    "cma=32M@0-0xffffffff"
    "androidboot.selinux=permissive"
    "buildvariant=eng"
  ];

  mobile.usb.mode = "android_usb";
  # Google
  mobile.usb.idVendor = "18D1";
  # "Nexus 4"
  mobile.usb.idProduct = "D001";

  mobile.system.type = "android";

  mobile.quirks.qualcomm.dwc3-otg_switch.enable = true;

  # qcacld-2.0 works the same way as wcnss-wlan
  mobile.quirks.qualcomm.wcnss-wlan.enable = true;
  mobile.quirks.wifi.disableMacAddressRandomization = true;
}
