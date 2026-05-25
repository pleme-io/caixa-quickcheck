# nix/modules/home-manager.nix — auto-generated from quickcheck.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.quickcheck; in {
  options.programs.quickcheck = {
    enable = lib.mkEnableOption "quickcheck";
    package = lib.mkOption { type = lib.types.package; default = pkgs.quickcheck or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
