{ pkgs, username, ... }:
{
  # Add user to libvirtd group
  users.users.${username}.extraGroups = [ "libvirtd" ];

  # Install necessary packages
  environment.systemPackages = with pkgs; [
    virt-manager
    virt-viewer
  ];

  # Manage the virtualisation services
  virtualisation = {
    libvirtd = {
      enable = true;
      # Shared Folders
      # qemu.vhostUserPackages = with pkgs; [ virtiofsd ];
    };
  };

  #services.qemuGuest.enable = true;
  #services.spice-vdagentd.enable = true; # enable copy and paste between host and guest
}
