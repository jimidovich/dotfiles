### network
pacman: network-manager-applet  
        gnome-keyring (solve no pop-up for password)
```bash
systemctl start NetworkManager.service
systemctl enable NetworkManager.service
```

### audio
```bash
amixer sset Master unmute

# sudo vi /etc/asound.conf
defaults.pcm.card 1
defaults.pcm.device 0
defaults.ctl.card 1
```

### apple keyboard
```bash
# troubleshooting ` key
sudo sh -c 'echo 0 > /sys/module/hid_apple/parameters/iso_layout'
# toggle fn mode
sudo sh -c 'echo 2 > /sys/module/hid_apple/parameters/fnmode'
# echo 'my password' | sudo sh -c '...'
```
