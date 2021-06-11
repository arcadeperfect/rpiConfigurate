sudo apt update -y
sudo apt upgrade -y
sudo apt install -y samba samba-common-bin smbclient cifs-utils

mkdir ~/ooo
mkdir ~/ooo/CrystalDimension
mkdir ~/ooo/LumpySpace

touch ~/.smb
echo user=alex >> ~/.smb