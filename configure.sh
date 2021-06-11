sudo apt update -y
sudo apt upgrade -y
sudo apt install -y samba samba-common-bin smbclient cifs-utils

mkdir /home/pi/ooo
mkdir /home/pi/ooo/CrystalDimension
mkdir /home/pi/ooo/LumpySpace

touch /home/pi/.smb
echo user=alex >> /home/pi/.smb
echo password=bumjy >> /home/pi/.smb

echo //ooo.local/CrystalDimension /home/pi/ooo/CrystalDimension	cifs uid=0,credentials=/home/pi/.smb,iocharset=utf8,noperm 0 0 >> /etc/fstab
echo //ooo.local/LumpySpace /home/pi/ooo/LumpySpace cifs uid=0,credentials=/home/pi/.smb,iocharset=utf8,noperm 0 0 >> /etc/fstab
