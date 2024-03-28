{ ... }:
let
  cmp-icons = builtins.readFile ./_lua/cmp_icons.lua;
in

{
  plugins = {
    cmp-buffer.enable = true;
    cmp-emoji.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;

    luasnip.enable = true;

    nvim-cmp = {
      enable = true;

      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "nvim_lua"; }
        { name = "path"; }
        { name = "copilot"; }
      ];

      formatting = {
        fields = [ "abbr" "kind" "menu" ];
        format = '' ${cmp-icons} '';
      };

      snippet = {
        expand = "luasnip";
      };

      window = {
        completion = {
          scrollbar = false;
          border = "rounded";
        };

        documentation = {
          border = "rounded";
        };
      };

      mappingPresets = [ "insert" ];

      # TODO: review mappings for better workflow
      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<C-n>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert })";
        "<C-p>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<S-CR>" = "cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = true,
          })"; # Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        "<C-CR>" = "function(fallback)
            cmp.abort()
            fallback()
          end";
      };
    };
  };
}
