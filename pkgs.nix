let
  sha256 = "sha256:1lbf24nlx01gckq2cij9fxc6jv0lrviwliaghrwspfgyb2ph4cn5";
  rev = "ac718d02867a84b42522a0ece52d841188208f2c";
in
builtins.trace "(Using pinned Nixpkgs at ${rev})"
  import
  (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
    inherit sha256;
  })
