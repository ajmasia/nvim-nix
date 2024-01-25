{ config, pkgs, ... }:

{
  plugins = {
    lsp.servers.prismals.enable = true;

    treesitter = {
      grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
        prisma
      ];
    };
  };
}


