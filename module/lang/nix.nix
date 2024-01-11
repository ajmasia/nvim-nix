{ pkgs, config, ... }:

{
  plugins = {
    nix.enable = true;
    hmts.enable = true;
    nix-develop.enable = true;

    lsp.servers.rnix-lsp = {
      enable = true;
    };

    lint = {
      lintersByFt = {
        nix = [ "statix" ];
      };
      linters = {
        statix = {
          cmd = "${pkgs.statix}/bin/statix";
        };
      };
    };


    treesitter = {
      grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
        nix
      ];
    };
  };

  extraConfigVim = ''
    au BufRead,BufNewFile flake.lock setf json
  '';
}

