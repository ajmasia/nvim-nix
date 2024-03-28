{ pkgs, ... }:

{
  imports = [
    ./lsp
    ./treesitter
    ./cmp
    ./telescope
    ./trouble
    ./git
    ./spectre
  ];

  extraPackages = with pkgs; [
    ripgrep
    lazygit
    fzf
  ];

  # feature that enhances the way Neovim loads and executes Lua modules, 
  # offering improved performance and flexibility.
  luaLoader.enable = true;

  clipboard = {
    providers.xsel.enable = true;
    register = "unnamedplus";
  };

  # plugins needed by others
  extraPlugins = with pkgs.vimPlugins; [ plenary-nvim ];

  plugins = {
    nvim-autopairs.enable = true;
    surround.enable = true;
    comment-nvim.enable = true;
    todo-comments.enable = true;
    persistence.enable = true;

    nvim-colorizer.enable = true;
    nvim-colorizer.userDefaultOptions.names = false;

    project-nvim = {
      enable = true;

      manualMode = true;
    };
  };
}
