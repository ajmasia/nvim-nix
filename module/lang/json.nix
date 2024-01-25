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

  # Permit comments in JSON files
  extraConfigLua = ''
    vim.cmd[[autocmd BufRead,BufNewFile *.json setfiletype jsonc]]
  '';
}
