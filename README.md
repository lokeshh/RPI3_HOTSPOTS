

# RPI3_HOTSPOTS
Feature:
 - Can install while wlan0 is connected to network.
 - easy to switch betwwen stattion mode and hotspot mode.
 - can share internet between eth0 and wlan0, can be config to share with wlan1 or ...
 
Introduction:
- This tutorial will guide you steps to setup the Wifi module of  raspberry pi 3 work with Station and Access Point mode, you can easily switch between station mode and AP mode.
Setup:
```bash
git clone https://github.com/quangthanh010290/RPI3_HOTSPOTS.git
./install.sh
```
Test:
- Station mode: sudo sta [SSID] [password] - Connect to a network with specific ssid name and password
- Station mode: sudo sta  - Connect to a network with saved ssid name and password
example:
```bash
sudo sta mySSID  myPass
```
- AP mode: sudo ap [SSID] [pass] - Create an wifi hotspot with specific ssid and pass
- AP mode: sudo ap [SSID]  - Create an wifi hotspot with specific ssid and no pass
example: 
```bash
sudo ap Mlabviet_wifi
```
