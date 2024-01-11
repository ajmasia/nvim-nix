{ pkgs, config, ... }:

{
  plugins = {
    lsp.servers.lua-ls = {
      enable = true;

      settings = {
        diagnostics = {
          # globals list it's empty to get global vars diagnostics warns
          globals = [ ];
        };
      };
    };

    conform-nvim = {
      formattersByFt = {
        lua = [ "stylua" ];
      };

      formatters = {
        stylua = {
          command = "${pkgs.stylua}/bin/stylua";
        };
      };
    };

    treesitter = {
      grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
        lua
        luadoc
        luap
      ];
    };
  };
}

