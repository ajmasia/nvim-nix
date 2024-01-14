{ config, ... }:

{
  plugins.lsp.servers.jsonls = {
    enable = true;
  };

  plugins.treesitter = {
    grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
      json
    ];
  };
}
