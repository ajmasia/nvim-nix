{
  imports = [
    ./config
    ./commons

    ./lang/lua.nix
    ./lang/tsserver.nix
    ./lang/nix.nix
    ./lang/json.nix
    ./lang/yaml.nix
    ./lang/html.nix
    ./lang/css.nix
    ./lang/python.nix
    ./lang/prisma.nix

    ./ui/themes/catppuccin.nix
    ./ui/dashboard
    ./ui/lualine
    ./ui/whichkey
    ./ui/tree
    ./ui/fidget

    ./extra/copilot
    ./extra/obsidian
    ./extra/markdown-preview
  ];
}

