{ config, ... }:

{
  plugins.lsp.servers.yamlls = {
    enable = true;

    extraOptions = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false;
            lineFoldingOnly = true;
          };
        };
      };
    };
  };

  plugins.treesitter = {
    grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
      yaml
    ];
  };
}
