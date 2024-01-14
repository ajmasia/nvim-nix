{
  # https://github.com/nix-community/nixvim/tree/main?tab=readme-ov-file#caveats
  config.options = {
    termguicolors = true;
    hlsearch = true;
    incsearch = true;
    cursorline = true;

    signcolumn = "yes";
    cmdheight = 1;
    wildmenu = true;
    showcmd = true;
    showmode = false;
    swapfile = false;

    number = true;
    relativenumber = true;
    numberwidth = 2;

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 0;
    expandtab = true;
    autoindent = true;

    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;

    updatetime = 100;
    timeout = true;
    timeoutlen = 300;
  };
}

