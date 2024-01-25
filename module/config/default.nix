{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./filetype.nix
  ];

  extraFiles."queries/markdown/injections.scm" = ''
    ;; extends

    ((inline) @injection.content
      (#lua-match? @injection.content "^%s*import")
      (#set! injection.language "typescript"))
    ((inline) @injection.content
      (#lua-match? @injection.content "^%s*export")
      (#set! injection.language "typescript"))
  '';
}

