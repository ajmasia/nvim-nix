{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    # windows
    {
      action = "<C-W>s";
      key = "<leader>-";
      options.desc = "Split window below";
      options.remap = true;
      mode = "n";
    }

    {
      action = "<C-W>s";
      key = "<leader>w-";
      options.desc = "Split window below";
      options.remap = true;
      mode = "n";
    }

    {
      action = "<C-W>v";
      key = "<leader>|";
      options.desc = "Split window right";
      options.remap = true;
      mode = "n";
    }

    {
      action = "<C-W>v";
      key = "<leader>w|";
      options.desc = "Split window right";
      options.remap = true;
      mode = "n";
    }

    {
      action = "<C-W>c";
      key = "<leader>wd";
      options.desc = "Delete window";
      options.remap = true;
      mode = "n";
    }
  ];
}
