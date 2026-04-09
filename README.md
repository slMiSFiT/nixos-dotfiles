# nixos-dotfiles

Personal NixOS configuration using flakes and home-manager.

> [!WARNING]
> Hardware-specific. Do not apply directly — use as reference or fork and adapt.

## Structure

```
.
├── flake.nix
├── hosts/
│   └── <hostname>/          # host-specific config & hardware
├── modules/
│   ├── core/                # user, boot, nix settings
│   ├── home/                # home-manager (programs, shell, services)
│   └── extra/               # ...
```

## Adapting to your machine

Before building, update:

- `flake.nix` — `username` and hostname under `nixosConfigurations`
- `hosts/<hostname>/hardware-configuration.nix` — regenerate with `nixos-generate-config`
- Hyprland config — screen resolution and refresh rate

## Installation

```bash
# 1. Clone
git clone https://github.com/slMiSFiT/nixos-dotfiles ~/.nixos-config

# 2. Replace hardware config
cp /etc/nixos/hardware-configuration.nix hosts/<hostname>/

# 3. Build
sudo nixos-rebuild switch --flake ~/.nixos-config#<hostname>
```

## Post-install

Manual steps after a fresh build:

- [ ] Restore backed up files
- [ ] Update Syncthing device IDs

## License

[MIT](./LICENSE)
