{ ... }:

{
  plugins.telescope = {
    enable = true;

    keymaps = {
      # Find files using Telescope command-line sugar.
      "<leader>/" = {
        action = "live_grep";
        desc = "Grep (root)";
      };

      "<leader><space>" = {
        action = "find_files";
        desc = "Files (root)";
      };

      "<leader>ff" = {
        action = "find_files";
        desc = "Files (root)";
      };

      "<leader>sg" = {
        action = "live_grep";
        desc = "Grep (root)";
      };

      "<leader>fb" = {
        action = "buffers";
        desc = "Buffers";
      };

      "<leader>sd" = {
        action = "diagnostics";
        desc = "Diagnostic";
      };

      "<leader>fr" = {
        action = "oldfiles";
        desc = "Recent Files (root)";
      };

      "<leader>sf" = {
        action = "current_buffer_fuzzy_find";
        desc = "Search in file";
      };
    };

    keymapsSilent = true;

    defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
        "%.ipynb"
      ];
      set_env.COLORTERM = "truecolor";
    };

    extraOptions = {
      pickers = {
        current_buffer_fuzzy_find = {
          # theme = "dropdown";
          # previewer = false;
        };
      };
    };

    extensions.fzf-native.enable = true;

  };
  extraConfigLua =
    # lua
    ''
      local actions = require("telescope.actions")
      local trouble = require("trouble.providers.telescope")

      local telescope = require("telescope")

      telescope.setup {
        defaults = {
          mappings = {
            i = { 
              ["<c-t>"] = trouble.open_with_trouble,
              ["<c-d>"] = actions.delete_buffer
            },

            n = { 
              ["<c-t>"] = trouble.open_with_trouble,
              ["<c-d>"] = actions.delete_buffer
            },
          },
        },
      }
    '';
}
