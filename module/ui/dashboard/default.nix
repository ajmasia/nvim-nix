{ pkgs, ... }:

let
  dashboardConfig = builtins.readFile ./_lua/dashboard_config.lua;
in 

{
  extraPlugins = with pkgs.vimPlugins; [
    nvim-web-devicons
    dashboard-nvim
  ];

  extraConfigLua = ''${dashboardConfig}'';

}
