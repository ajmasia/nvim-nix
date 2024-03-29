{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    nvim-web-devicons
  ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = ":Neotree action=focus reveal toggle<CR>";
      options = {
        silent = true;
        desc = "File Explorer (root)";
      };
    }
  ];

  plugins = {
    neo-tree = {
      enable = true;

      closeIfLastWindow = true;
      window = {
        width = 30;
        autoExpandWidth = true;
      };
    };
  };
}
