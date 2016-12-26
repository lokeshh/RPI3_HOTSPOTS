#! /bin/bash
if [ -z "$1" ] 
then
  echo "Please Input Access Point Name"
  exit(1)
else
  sudo sed -i -e "s/\(ssid=\).*/\1$1/" /etc/hostapd/hostapd.conf
fi
if [ -z "$2" ] 
then
  echo "No Pass Hotspot"
  x=0
  sudo sed -i -e "s/\(wpa=\).*/\1$x/" /etc/hostapd/hostapd.conf
  exit(1)
else
  x=2
  sudo sed -i -e "s/\(wpa=\).*/\1$x/" /etc/hostapd/hostapd.conf
  sudo sed -i -e "s/\(wpa_passphrase=\).*/\1$2/" /etc/hostapd/hostapd.conf
fi

sudo /etc/init.d/hostapd stop
sudo /etc/init.d/udhcpd stop
sudo ifdown wlan0
sudo ifconfig wlan0 down
sudo rm -rf /etc/network/interfaces
sudo cp /etc/network/interfaces.ap /etc/network/interfaces
sudo ifconfig wlan0 up
sudo ifup wlan0
sudo /etc/init.d/hostapd restart
sudo /etc/init.d/udhcpd restart
sudo service hostapd status
