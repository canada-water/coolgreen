# Compositor
picom -b --unredir-if-possible --backend xr_glx_hybrid --vsync --use-damage --glx-no-stencil &

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
