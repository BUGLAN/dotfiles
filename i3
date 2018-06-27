# font
font pango: Hack

# mod alt
set $mod Mod1

# 间隙
gaps inner 8

# 调整窗口边框样式……
bindsym $mod+u border none
bindsym $mod+n border normal
bindsym $mod+o border 1pixel
bindsym $mod+b border toggle

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right



# workspace change
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# 移动焦点窗口到其它工作区……
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# 在工作区的窗口间切换……
bindsym $mod+Tab workspace next
bindsym $mod+Shift+Tab workspace prev

# new window style
new_float none
new_window 1pixel

# keywords
bindsym $mod+d exec --no-startup-id rofi -show drun
bindsym $mod+Shift+c reload
bindsym $mod+Shift+r restart
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

#bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+Return exec terminator
bindsym $mod+Shift+q kill
bindsym $mod+q kill
bindsym $mod+c exec google-chrome-stable

# - & |
bindsym $mod+t split h
bindsym $mod+v split v

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# focus floating
bindsym $mod+space focus mode_toggle

# full screen
bindsym $mod+f fullscreen toggle

# move screen
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right
bindsym $mod+Left move left
bindsym $mod+Down move down
bindsym $mod+Up move up
bindsym $mod+Right move right

# focus parent screen
# bindsym $mod+a focus parent

# wrappers
# exec --no-startup-id feh --bg-scale ~/wrappers/wrapper1.png
exec_always --no-startup-id nitrogen --restore


# compton
exec_always compton -f

# fcitx
exec --no-startup-id LANG="zh_CN.UTF-8" fcitx


# bar
bar {
    i3bar_command i3bar -t
    # position top
    status_command conky -c ~/.i3/conky_bar
    colors {
        background #555555
        statusline #ffffff
        focused_workspace  #4c7899 #285577 #ffffff
        active_workspace   #333333 #5f676a #ffffff
        inactive_workspace #333333 #222222 #888888
        urgent_workspace   #2f343a #900000 #ffffff
    }
    colors {
        background #10101000
        statusline #FFFFFF
        separator  #3399FF
        # 工作区颜色         边框    背景    文字
        focused_workspace  #3297FD #11111100 #FFFFFF
        active_workspace   #FFFFFF #FFFFFF00 #FFFFFF
        inactive_workspace #111111 #11111100 #FFFFFF
        urgent_workspace   #990000 #11111100 #FFFFFF
        binding_mode       #990000 #99000000 #FFFFFF
}

}

bindsym $mod+r mode "resize"

#resize shortcuts (also you can use the mouse for resizing)
mode "resize" {
    bindsym j resize shrink width 10 px or 10 ppt
    bindsym k resize grow height 10 px or 10 ppt
    bindsym l resize shrink height 10 px or 10 ppt
    bindsym semicolon resize grow width 10 px or 10 ppt
    #same bindings, but for the arrow keys
    bindsym Left resize shrink width 10 px or 10 ppt
    bindsym Down resize grow height 10 px or 10 ppt
    bindsym Up resize shrink height 10 px or 10 ppt
    bindsym Right resize grow width 10 px or 10 ppt
    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}


# set float mode
floating_modifier $mod

# float mode open
for_window [class="Thunar"] floating enable resize set 800 600
for_window [class="Blueberry.py"] floating enable
for_window [class="Nitrogen"] floating enable
# move position center

bindsym $mod+z exec Thunar


# scratchpad config
bindsym $mod+m move scratchpad
bindsym $mod+a scratchpad show


