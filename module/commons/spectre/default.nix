{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    nvim-spectre
  ];

  keymaps = [
    {
      action = "<cmd>lua require('spectre').open()<cr>";
      key = "<leader>sra";
      options = {
        desc = "In all files (spectre)";
      };
      mode = [ "n" ];
    }

    {
      action = "<cmd>lua require('spectre').open_visual({select_word=true})<cr>";
      key = "<leader>srw";
      options = {
        desc = "Current word (spectre)";
      };
      mode = [ "n" ];
    }

    {
      action = "<cmd>lua require('spectre').open_visual()<cr>";
      key = "<leader>srw";
      options = {
        desc = "Current word (spectre)";
      };
      mode = [
        "v"
      ];
    }

    {
      action = "<cmd>lua require('spectre').open_file_search({select_word=true})<cr>";
      key = "<leader>srb";
      options = {
        desc = "Current word in buffer (espectre)";
      };
      mode = [
        "n"
      ];
    }
  ];
}
