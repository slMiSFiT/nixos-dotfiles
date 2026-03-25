{ pkgs, ... }:
{
  # Add user to libvirtd group
  users.users.misfit.extraGroups = [ "libvirtd" ];

  # Install necessary packages
  environment.systemPackages = with pkgs; [
    virt-manager
    virt-viewer
  ];

  # Manage the virtualisation services
  virtualisation = {
    libvirtd = {
      enable = true;
    };
  };

  #  networking.firewall.trustedInterfaces = [ "virbr0" ];
}
