#Setting Ubuntu 16.04 with i3wm

After fresh install of Ubuntu 16.04 with Unity do this steps

## Adding the latest version of i3 from official sources
```
sudo echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list.d/i3.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install sur5r-keyring
sudo apt-get update
```
After that install i3 via command:
```
sudo apt-get install i3 \
xbacklight \
feh \
fonts-font-awesome
```

## Tweaks
For simplification of work with file-manager create the startup script in
```
sudo gedit /usr/local/bin/n2autilus
```
And insert lines
```
#/bin/bash
nautilus --no-desktop
```
Lastly make it executable:
```
sudo chmod 755 /usr/local/bin/n2autilus
```
If you want to have unity-control-center to display all entries then based on this thread
http://askubuntu.com/questions/766775/ubuntu-doesnt-give-the-correct-keycodes-for-some-media-keys
then add at the end of your profile file
```
vim .profile
```
this line:
```
export XDG_CURRENT_DESKTOP=Unity
```
---

Credits for wallpaper belongs to Mustafa Kareem
https://www.flickr.com/photos/126031328@N05/15683734850
