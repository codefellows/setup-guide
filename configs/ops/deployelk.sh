# Deploy DetectionLabELK

# DetectionLabELK is a premade set of VMs that allow us to skip the deployment of various security systems and jump right into a domained network and start simulating threats.
# This installation process takes about 5 hours. Keep the executing terminal open and a Virtualbox Manager GUI open to track installation progress.

# Install Vagrant, a DetectionLabELK deployment dependency
curl -O https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.deb
sudo apt install ./vagrant_2.2.14_x86_64.deb
vagrant --version

### Install Packer, a DetectionLabELK deployment dependency
export VER="1.6.6"
wget https://releases.hashicorp.com/packer/${VER}/packer_${VER}_linux_amd64.zip
sudo apt install unzip -y
unzip packer_${VER}_linux_amd64.zip
sudo mv packer /usr/local/bin
packer version

### Install Vagrant-Reload Plugin, Download DetectionLabELK, and start installing
vagrant plugin install vagrant-reload
mkdir ~/github
cd ~/github
git clone https://github.com/cyberdefenders/DetectionLabELK.git
cd ~/github/DetectionLabELK
./build.sh virtualbox

