{ ... }: {
  plugins.lualine = {
    enable = true;

    theme = "auto";
    iconsEnabled = true;
    globalstatus = true;
    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
    disabledFiletypes = {
      statusline = [ "dashboard" "alpha" "starter" "neo-tree" ];
    };
    extensions = [ "neo-tree" ];

    sections = {
      lualine_a = [
        {
          name = "mode";
          extraConfig = { upper = true; };
        }
      ];

      lualine_b = [
        {
          name = "branch";
          icon = "";
        }
      ];

      lualine_c = [
        {
          name = "filename";
          extraConfig = {
            path = 0;
            fileStatus = true;
            symbols = {
              modified = " ";
              readonly = " ";
              unamed = " ";
              new = " ";
            };
          };
        }

        {
          name = "diff";
          extraConfig = {
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
          };
        }
      ];

      lualine_x = [
        {
          name = "diagnostics";
          extraConfig = {
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = " ";
            };
          };
        }

        {
          name = "filetype";
        }
      ];

      lualine_y = [
        {
          name = "progress";
          extraConfig = { upper = true; };
        }
      ];

      lualine_z = [
        {
          name = "location";
          extraConfig = { upper = true; };
        }
      ];
    };
  };
}
