# Compositor
picom --experimental-backends &

# slstatus
slstatus &

# Wallpaper
nitrogen --restore &

# Volume unmute
pamixer -u &

# Auto lock
xautolock -time 5 -locker slock &

# Execute dwm
exec dwm
