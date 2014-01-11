#!/bin/bash -eux

sed -i -e 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/' /etc/default/grub
/usr/sbin/update-grub

apt-get -y autoremove
apt-get -y clean
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
rm -f /tmp/chef*deb
