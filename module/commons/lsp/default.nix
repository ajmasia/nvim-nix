let
  diagnosticConfig = builtins.readFile ./_lua/diagnostic_config.lua;
  onAttach' = builtins.readFile ./_lua/on_attach.lua;
  autocommands' = builtins.readFile ./_lua/autocommands.lua;
  commands' = builtins.readFile ./_lua/commands.lua;
in
{
  extraConfigLuaPre = ''
    ${autocommands'}
    ${commands'}
  '';

  plugins = {
    lsp = {
      enable = true;

      keymaps = {
        silent = true; # don't show the keymaps messages when they are pressed
        diagnostic = {
          "]d" = "goto_next";
          "[d" = "goto_prev";
        };

        lspBuf = {
          K = "hover";
          gD = "declaration";
          gr = "references";
          gd = "definition";
          gi = "implementation";
          gt = "type_definition";
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
      };

      preConfig = ''${diagnosticConfig}'';
      onAttach = ''${onAttach'}'';
    };

    conform-nvim = {
      enable = true;

      formatOnSave = {
        lspFallback = true;
        timeoutMs = 500;
      };
    };

    lint = {
      enable = true;
    };

  };
}

