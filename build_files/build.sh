#!/bin/bash

set -ouex pipefail

### Install packages
# 
### Third-party repos needed for a few packages that aren't in Fedora or RPMFusion.
# Tailscale
curl -fsSL https://pkgs.tailscale.com/stable/fedora/tailscale.repo \
    -o /etc/yum.repos.d/tailscale.repo

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1
# dnf config-manager addrepo --from-repofile=https://repository.mullvad.net/rpm/stable/mullvad.repo

# this installs a package from fedora repos
dnf5 install -y \
stow \
ansible \
asciiquarium \
autojump \
aerc \
bat \
clamav \
clamd \
cmatrix \
dbus-devel \
eureka \
eza \
fd-find \
feh \
firejail \
fzf \
git-crypt \
gnome-boxes \
gnome-tweaks \
gnome-directory-thumbnailer \
gparted \
httpie \
irssi \
kitty \
konsole \
libvirt \
lolcat \
lsd \
lua \
ncdu \
neovim \
neomutt \
newsboat \
nextcloud-client \
nvtop \
pcre \
podman-compose \
podman-docker \
ranger \
ripgrep \
smartmontools \
tailscale \
task \
taskopen \
tealdeer \
trash-cli \
unbound \
vit \
virt-manager \
virt-viewer \
zoxide --skip-broken --skip-unavailable 

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable clamav-freshclam.service
systemctl enable libvirtd.service
systemctl enable podman.socket
systemctl enable tailscaled.service
systemctl enable smartd.service
