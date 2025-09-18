#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y webkit2gtk4.0 

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File


#systemctl enable podman.socket

# cisco anyconnect
# try to install to /opt (hardcoded in the script) and bootc container lint raises a warning
# curl --retry 3 -Lo /tmp/cisco.tar.gz https://its.gmu.edu/wp-content/uploads/cisco-secure-client-linux64-5.1.3.62-predeploy-k9.tar.gz
# tar -xzf /tmp/cisco.tar.gz -C /tmp
# pushd /tmp/cisco-secure-client-linux64-5.1.3.62/vpn
# rm license.txt
# sh vpn_install.sh
# popd