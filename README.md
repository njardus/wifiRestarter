# wifiRestarter
I have a laptop acting as a file server. Due to a bug somewhere, the wifi dies when too large a file is being copied. (Or the chip overheats, or short circuits, or something. Point is, it manifests as dead wifi.) wifiRestarter check if there is a wifi connection, and if not, switches the wifi off and on again, so that I don't have to.

Sensitive information has been redacted. Replace $(ROUTERIP) with your router's internal IP address, or any other IP address that should always be accessible by your host machine when wifi is on. Replace $(SSID) with the ssid of the wifi connection you want to connect to.
