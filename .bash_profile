#
# ~/.bash_profile
#

[[ -f ~/.config/bash/bashrc ]] && . ~/.config/bash/bashrc

#export PATH="$HOME/.local/bin:$PATH"
folders=$(find ~/.local/bin -type d -printf %p:)
export PATH="$PATH:$folders"


export TERMINAL="st"
export BROWSER="qutebrowser"
export EDITOR="nvim"
export VISUAL="nvim"

# ~/ cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export LESSHISTFILE="-"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export CARGO_ENV="${XDG_DATA_HOME:-$HOME/.local/share}/cargo/env"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export SCR_DIR="$HOME/pc/sc"
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}/python/pythonrc"
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export LIBREWOLF_XDG_PROFILE="librewolf/9knhj6ul.default-release"
export SSB_HOME="$XDG_DATA_HOME/zoom"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history

# android studio "probably"
export LEIN_HOME="$XDG_DATA_HOME"/lein

# npm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# rust
[[ -f $CARGO_ENV ]] && . $CARGO_ENV
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

# nnn
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='p:preview-tabbed'

# pass
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export PASSWORD_STORE_GENERATED_LENGTH=30

# android studio bug
export _JAVA_AWT_WM_NONREPARENTING=1

[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"
. "/home/barti/.local/share/cargo/env"
