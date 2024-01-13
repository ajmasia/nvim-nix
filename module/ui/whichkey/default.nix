{ ... }:

{
    plugins = {
      which-key = {
        enable = true;

        plugins.spelling.enabled = true;

        registrations = {
          "<leader>f" = { name = "file"; };
          "<leader>s" = { name = "search"; };
          "<leader>sr" = { name = "replace"; };
          "<leader>w" = { name = "windows"; };
          "<leader>b" = { name = "buffers"; };
          "<leader>x" = { name = "quickfix"; };
          "]" = "+next";
          "[" = "+prev";
        };
      };

      };
  }
