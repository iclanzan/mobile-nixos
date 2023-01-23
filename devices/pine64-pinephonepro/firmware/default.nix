{ lib
, runCommand
, firmwareLinuxNonfree
, fetchgit
, fetchFromGitLab
}:

let
  pinephonepro-firmware = fetchFromGitLab {
    domain = "gitlab.manjaro.org";
    owner = "tsys";
    repo = "pinebook-firmware";
    rev = "937f0d52d27d7712da6a008d35fd7c2819e2b077";
    sha256 = "sha256-Ij5u4IF55kPFs1BGq/sLlI3fjufwSjqrf8OZ2WnvjWI=";
  };
  ap6256-firmware = fetchFromGitLab {
    domain = "gitlab.manjaro.org";
    owner = "manjaro-arm";
    repo = "packages%2Fcommunity%2Fap6256-firmware";
    rev = "a30bf312b268eab42d38fab0cc3ed3177895ff5d";
    sha256 = "sha256-i2OEkn7RtEMbJd0sYEE2Hpkvw6KRppz5AbwXJFNa/pE=";
  };
  extraFirmware = fetchgit {
    url = "https://megous.com/git/linux-firmware";
    rev = "5c4c2b89f30a42f5ffabb5b5bcbc799d8ac9f66f";
    sha256 = "sha256-TaGwT0XvbxrfqEzUAdg19Yxr32oS+RffN+yzSXebtac=";
  };
in

# The minimum set of firmware files required for the device.
runCommand "pine64-pinephonepro-firmware"
{
  src = firmwareLinuxNonfree;
} ''
  for firmware in \
    rockchip/dptx.bin \
  ; do
    mkdir -p "$(dirname $out/lib/firmware/$firmware)"
    cp -vrf "$src/lib/firmware/$firmware" $out/lib/firmware/$firmware
  done

  (PS4=" $ "; set -x
  mkdir -p $out/lib/firmware/brcm
  cp -fv ${extraFirmware}/brcm/*43* $out/lib/firmware/brcm/
  )
''
