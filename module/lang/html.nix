{ config, ... }:

{
  plugins = {
    lsp.servers.html = {
      enable = true;

      extraOptions.settings = {
        html = {
          format = {
            templating = true;
            wrapLineLength = 80;
            wrapAttributes = "auto";
          };

          hover = {
            documentation = true;
            references = true;
          };
        };
      };
    };

    treesitter = {
      grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
        html
      ];
    };
  };
}
