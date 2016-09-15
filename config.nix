{
  allowUnfree = true;

  packageOverrides = pkgs_: with pkgs_; {
    bins = import ./bins {
      inherit (pkgs) srcOnly;
    };

    homes = import ./homes {
      inherit (pkgs) srcOnly;
    };

    all = with pkgs; buildEnv {
      name = "all";
      paths = [
        bins
        homes

        cmake
        jq
        mtr
        oh-my-zsh
        stack
      ];
    };
  };
}
