# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type

# Aliases
alias ls='ls -lah --color=auto'
alias mkdir='mkdir -pv'

# Navigation
alias ..='cd ..'

# Misc. Aliases
alias v='nvim'
alias c='clear'
alias n='neofetch --source ~/Stuff/Apps/skull.txt'
alias b='nvim ~/.config/bspwm/bspwmrc'
alias sx='nvim ~/.config/sxhkd/sxhkdrc'
alias fs='nvim ~/.config/fish/config.fish'
alias ba='nvim ~/.bashrc'
alias po='nvim ~/.config/polybar/config.ini'
alias pi='nvim ~/.config/picom.conf'
alias al='nvim ~/.config/alacritty/alacritty.yml'
alias checkclass='xprop | grep WM_CLASS'
alias sql='mysql -u upsurge11 -p'
alias t="tree -C -h"

# Pacman and Yay
alias pacsyu='sudo pacman -Syu'                  # update only standard pkgs
alias pacsyyu='sudo pacman -Syyu'                # Refresh pkglist & update standard pkgs
alias pacfind='pacman -Ss'			 # search for standard pkgs
alias pacin='sudo pacman -S'			 # install standard pkgs
alias pacrem='sudo pacman -Rncs'		 # remove pkgs (both standard and AUR)
alias yaysua='yay -Sua --noconfirm'		 # update only AUR pkgs (yay)
alias yaysyu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)
alias yayfind='yay -Ss'				 # search for AUR pkgs (yay)
alias yayin='yay -S'				 # install AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)' # remove orphaned packages

# Get Fastest Mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Starship Prompt For ~/.config/fish/config.fish

starship init fish | source

