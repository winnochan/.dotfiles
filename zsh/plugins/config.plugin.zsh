# if [ ! -e ~/.config ]; then
#   mkdir ~/.config
# fi

# if [ ! -L ~/.config/ulauncher ]; then
#   if [ -e ~/.config/ulauncher ]; then
#     rm -rf ~/.config/ulauncher
#   fi
#   ln -s $ZSH_DIR/config/ulauncher ~/.config/ulauncher
#   echo 'link ulauncher config'
# fi

# if [ ! -L ~/.alacritty.yml ]; then
#   if [ -e ~/.alacritty.yml ]; then
#     rm -rf ~/.alacritty.yml
#   fi
#   ln -s $ZSH_DIR/config/alacritty.yml ~/.alacritty.yml
#   echo 'link alacritty config'
# fi

# if [ ! -L ~/.mongoshrc.js ]; then
#   if [ -e ~/.mongoshrc.js ]; then
#     rm -rf ~/.mongoshrc.js
#   fi
#   ln -s $ZSH_DIR/config/mongoshrc.js ~/.mongoshrc.js
#   echo 'link mongoshrc config'
# fi

# if [ ! -L ~/.wezterm.lua ]; then
#   if [ -e ~/.wezterm.lua ]; then
#     rm -rf ~/.wezterm.lua
#   fi
#   ln -s $ZSH_DIR/config/wezterm.lua ~/.wezterm.lua
#   echo 'link wezterm.lua'
# fi

# if [ "$ZSH_SYS" = "Linux" ]; then
#   if [ ! -L ~/.config/terminator ]; then
#     if [ -e ~/.config/terminator ]; then
#       rm -rf ~/.config/terminator
#     fi
#     ln -s $ZSH_DIR/config/terminator ~/.config/terminator
#     echo 'link terminator config'
#   fi

#   if [ ! -L ~/.xprofile ]; then
#     if [ -e ~/.xprofile ]; then
#       rm -rf ~/.xprofile
#     fi
#     ln -s $ZSH_DIR/config/xprofile ~/.xprofile
#     echo 'link xprofile config'
#   fi

#   if command -v xmodmap >/dev/null 2>&1; then
#     if [ ! -L ~/.Xmodmap ]; then
#       if [ -e ~/.Xmodmap ]; then
#         rm -rf ~/.Xmodmap
#       fi
#       ln -s $ZSH_DIR/config/Xmodmap ~/.Xmodmap
#       echo 'link xmodmap'
#     fi
#   fi
# fi

# __wezterm_dir=~/.config/wezterm
# if [ ! -L $__wezterm_dir ]; then
#   if [ -e $__wezterm_dir ]; then
#     rm -rf $__wezterm_dir
#   fi
#   ln -s $ZSH_DIR/config/wezterm $__wezterm_dir
#   echo 'link wezterm config'
# fi
# unset __wezterm_dir
