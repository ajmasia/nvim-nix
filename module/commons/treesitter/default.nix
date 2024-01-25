{ pkgs, config, ... }:
let
  extraKeymaps = builtins.readFile ./_lua/extra_keymaps.lua;
in

{
  plugins = {
    treesitter = {
      enable = true;

      indent = true;
      folding = true;

      # enable treesitter injection for lua content in nix files
      nixvimInjections = true;

      grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
        c
        vim
        vimdoc
        markdown
        markdown_inline
        query
      ];
    };

    treesitter-context.enable = true;

    treesitter-textobjects = {
      enable = true;

      select = {
        enable = true;

        keymaps = {
          "aa" = "@parameter.outer";
          "ia" = "@parameter.inner";
          "af" = "@function.outer";
          "if" = "@function.inner";
          "ac" = "@class.outer";
          "ic" = "@class.inner";
          "ai" = "@conditional.outer";
          "ii" = "@conditional.inner";
          "al" = "@loop.outer";
          "il" = "@loop.inner";
          "ak" = "@block.outer";
          "ik" = "@block.inner";
          "is" = "@statement.inner";
          "as" = "@statement.outer";
          "ad" = "@comment.outer";
          "am" = "@call.outer";
          "im" = "@call.inner";
        };
      };

      move = {
        enable = true;

        setJumps = true;
        gotoNextStart = {
          "]m" = "@function.outer";
          "]]" = "@class.outer";
        };
        gotoNextEnd = {
          "]M" = "@function.outer";
          "][" = "@class.outer";
        };
        gotoPreviousStart = {
          "[m" = "@function.outer";
          "[[" = "@class.outer";
        };
        gotoPreviousEnd = {
          "[M" = "@function.outer";
          "[]" = "@class.outer";
        };
      };

      swap = {
        enable = true;

        swapNext = {
          ")a" = "@parameter.inner";
        };
        swapPrevious = {
          ")A" = "@parameter.inner";
        };
      };
    };
  };

  extraConfigLua = ''${extraKeymaps}'';
}

