# nix/modules/darwin.nix — auto-generated from quickcheck.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.quickcheck; in {
  options.services.quickcheck = {
    enable = lib.mkEnableOption "quickcheck";
    package = lib.mkOption { type = lib.types.package; default = pkgs.quickcheck or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
