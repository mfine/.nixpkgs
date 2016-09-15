# .nixpkgs

Controlling your home directory executables and configuration with nix.

## Usage

Dump your executables in [bins](bins).

Dump your configuration files and directories to be symlink'd in [homes](homes).

Then bootstrap:

```
$ ~/.nixpkgs/bins/files/bin/nix-env-install-all.sh
```

Thereafter:

```
$ nix-env-install-all.sh
```

[bins]: https://github.com/mfine/.nixpkgs/tree/master/bins/files/bin
[homes]: https://github.com/mfine/.nixpkgs/tree/master/homes/files/homes
