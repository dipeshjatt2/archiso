#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="bhagwaos"
iso_label="BHAGWA_$(date +%Y%m)"
iso_publisher="BhagwaOS"
iso_application="BhagwaOS Live/Installation Media"
install_dir="arch"
buildmodes=('iso')
# Use modern bootmodes
bootmodes=('bios.syslinux' 'uefi.systemd-boot')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
)
