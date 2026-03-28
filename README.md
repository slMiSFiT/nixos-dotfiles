# nixos-dotfiles

My personal NixOS configuration using flakes and home-manager.

> [!IMPORTANT]
> This configuration is tailored to my hardware — do not apply it directly.
> Use it as a reference or fork it and adapt it to your own setup.

---

## Before You Use This

If you're adapting this for your own machine, make sure to update:

- **Hostname** — defined in `flake.nix`, `hosts/<hostname>/default.nix` and shell aliases.
- **Username** — used throughout the config and home-manager modules
- **Screen resolution & refresh rate** — set in the hyprland config for your display
- **Hardware configuration** — always regenerate with `nixos-generate-config` on your machine

---

## Installation

```bash
# 1. Clone the repo
git clone https://github.com/slMiSFiT/nixos-dotfiles ~/.nixos

# 2. Copy your machine's hardware config
cp /etc/nixos/hardware-configuration.nix ~/.nixos/hosts/<hostname>/

# 3. Build and switch (boots into new config on next reboot)
sudo nixos-rebuild boot --flake ~/.nixos#<hostname>

# 4. Reboot
reboot
```

---

## Post Installation

Things that can't/won't be automated and need to be done manually after a fresh install:

- [ ] Update firmware (fwupd)
- [ ] Update Syncthing device IDs
- [ ] Set up browser (extensions, settings, account)
- [ ] Restore backed up files if any
- [ ] Set up SSH keys
- [ ] Restore GPG keys
- [ ] VM - Start/autostart the default network

---

## License

[MIT](./LICENSE)
