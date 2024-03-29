rec {
  description = "intersection-observer";
  inputs = {
    env.url = "git+ssh://git@github.com/grybiena/purescript-environment";  
  };

  outputs = inputs@{ env, ... }:
    env.flake-utils.lib.eachDefaultSystem (system:
      env.build-package { inherit system;
                          name = description;
                          src = ./.;
                          overlays = { };
                          derive-package = ./package.nix;
                        }                
   );
}

