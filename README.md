# nixos-dotfiles

> My personal NixOS configuration using flakes and home-manager + dotfiles.

> [!NOTE] Note:
> This configuration is tailored to my hardware. Do not apply it directly — use it as a reference.

## Installation

> [!IMPORTANT] Important:
> match hostname & username!

```bash

$ git clone https://github.com/slMiSFiT/nixos-dotfiles ~/.nixos

$ cp /etc/nixos/hardware-configuration ~/.nixos/host/

$ sudo nixos-rebuild boot --flake ~/.nixos#blackstone

$ reboot

```

## Post Installation

> [!TODO] Todo:
>
> - restore backed up files
> - setup syncthing
> - setup ssh

### License

MIT
