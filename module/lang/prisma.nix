{ config, pkgs, ... }:

{
  programs.nixvim = {
    plugins = {
      lsp.servers.prismals.enable = true;

      treesitter = {
        grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
          prisma
        ];
      };
    };
  };
}


