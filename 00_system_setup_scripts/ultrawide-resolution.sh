sudo tee -a ultrawide-resolution.sh > /etc/init.d <<EOT
#!/usr/bin/zsh
xrandr --newmode "2560x1080_60.00" 230.00 2560 2720 2992 3424 1080 1083 1093 1120 -hsync +vsync
xrandr --addmode HDMI-1 2560x1080_60.00
xrandr --output HDMI-1 --mode 2560x1080_60.00
EOT

sudo touch /etc/rc.d/rc3.d/S1ultrawide-resolution.sh # tells init.d to "S"tart the script in the first place if system is in runlevel 3
sudo touch /etc/rc.d/rc6.d/K1ultrawide-resolution.sh # tells init.d to "K"ill the script in the first place if system is in runlevel 6