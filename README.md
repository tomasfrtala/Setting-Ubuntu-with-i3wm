# Setting Ubuntu 24.04 with i3wm

After fresh install of Ubuntu 24.04 

## Add the latest version of i3 from Regolith
https://regolith-desktop.com/

# Switch to faster compositor
`sudo apt install regolith-compositor-none`

# Install i3 default theme
`sudo apt install regolith-look-i3-default`

# For status bar install only these packages and remove other
```
i3xrocks-battery
i3xrocks-keyboard-layout
i3xrocks-nm-vpn
i3xrocks-openvpn
i3xrocks-time
i3xrocks-time
i3xrocks-volume
i3xrocks-wifi
regolith-i3xrocks-config
```

# For fixing the GTK4 app not switching to dark theme
Create the file `$HOME/.config/xdg-desktop-portal/portals.conf` with the content:
```
[preferred]
default=gtk;wlr
```

# Finally copy configs to their target directories
```
.config to ~/
usr to /usr
```

# Fix heating issue
Follow the steps about setting the thermald in this answers https://askubuntu.com/a/1520402

---

Credits for wallpaper belongs to Mustafa Kareem
https://www.flickr.com/photos/126031328@N05/15683734850
