# Nvim Nix

Neovim configuration using Nix

## Module definition

### Commons folder

This folder contains all commons plugins:

- LSP for language server protocol
- CMP for code completion
- GIT integration
- Telescope to search files and buffers
- Treesitter to improve syntax highlighting
- Trouble to show errors and warnings
- Spectre to search and replace
- Autopairs to auto close brackets
- Surround to add brackets, quotes, etc
- Comment to comment lines
- Todo comments to show todo comments
- Persistence to persist sessions
- Colorizer to show colors
- Project to manage projects

### Config folder

This folder contains main Neovim config. It's divided in 3 files:

- `oprions.nix` to define nvim main options
- `keymaps.nix` to define nvim main keymaps
- `autocommands.nix` to define nvim auto commands

### Lang folder

This folder contains all settings to specific languages:

- Javascript/Tyepscript
- HTML
- CSS
- JSON
- YAML
- Lua 
- Nix

### UI folder

This fodler contains all UI plugins:

- Dashboard to show a dashboard when nvim starts
- Fidget to show a fidget spinner when nvim loads LSP servers attached to a buffer
- Lualine to show a status line
- NeoTree to show a file explorer
- WhichKey to show keymaps help

### Extras folder

Contains some extra plugins:

- Copilot to show a popup with code snippets

## Current conigurations availables

### Default

This configuration is the default configuration in a estable version. You can run it with:

```bash
nix run github:ajmasia/nvim-nix
```

### Rolling

This configuration is the default configuration in a rolling version. Its the best way to test new plugins or configs. You can run it with:

```bash
nix run github:ajmasia/nvim-nix#rolling
```
