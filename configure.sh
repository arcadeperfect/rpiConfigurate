sudo apt update -y
sudo apt upgrade -y
sudo apt install -y samba samba-common-bin smbclient cifs-utils

mkdir ~/ooo
mkdir ~/ooo/CrystalDimension
mkdir ~/ooo/LumpySpace

touch ~/.smb
echo user=alex >> ~/.smb
echo password=bumjy >> ~/.smb

sudo su

echo //ooo.local/CrystalDimension /home/pi/ooo/CrystalDimension	cifs uid=0,credentials=/home/pi/.smb,iocharset=utf8,noperm 0 0 >> /etc/fstab
echo //ooo.local/LumpySpace /home/pi/ooo/LumpySpace cifs uid=0,credentials=/home/pi/.smb,iocharset=utf8,noperm 0 0 >> /etc/fstab
