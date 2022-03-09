# Stop services
sudo systemctl stop virtualbox-guest-utils.service
sudo systemctl stop virtualbox
sudo systemctl stop dkms
sudo systemctl stop vboxadd.service
sudo systemctl stop vboxdrv.service

# Attempt uninstall
vboxmanage extpack remove Oracle_VM_VirtualBox_Extension_Pack-6.1.16-140961.vbox-extpack --accept-license
sudo apt-get remove virtualbox-6.1 -y
sudo apt remove linux-headers-$(uname -r) dkms -y


