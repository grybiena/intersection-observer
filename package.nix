{ ps-pkgs, ... }:
  with ps-pkgs;
  { version = "1.0.0";
    dependencies =
      [ css
        options
        web-dom
        web-events
      ];
    src = "src";
  }
