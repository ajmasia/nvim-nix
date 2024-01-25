{ config, pkgs, ... }:

{
  plugins = {
    lsp.servers.cssls = {
      enable = true;
    };

    lsp.servers.tailwindcss = {
      enable = true;
    };

    conform-nvim = {
      formattersByFt = {
        css = [ "prettierd" ];
      };

      formatters = {
        prettierd = {
          command = "${pkgs.prettierd}/bin/prettierd";
        };
      };
    };

    lint = {
      lintersByFt = {
        css = [ "stylelint" ];
      };

      linters = {
        stylelint = {
          cmd = "${pkgs.stylelint}/bin/stylelint";
        };
      };
    };

    treesitter = {
      grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
        css
      ];
    };
  };
}
