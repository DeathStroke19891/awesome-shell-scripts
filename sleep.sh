swayidle -w timeout 300 'swaylock -K' \
            timeout 600 'hyprctl dispatch dpms off' \
            timeout 900 'systemctl suspend' \
            resume 'hyprctl dispatch dpms on' \
            before-sleep 'swaylock -K' &
