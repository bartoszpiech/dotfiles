# zsh config - barti

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#PS1="$(tput bold)$(tput setaf 177)[$(tput sgr0)$(tput bold)$(tput setaf 83)\u$(tput sgr0)$(tput bold)$(tput setaf 177)@$(tput sgr0)$(tput bold)$(tput setaf 13)\h$(tput sgr0) $(tput bold)$(tput setaf 6)\W$(tput sgr0)$(tput bold)$(tput setaf 177)]$(tput sgr0)$ "

setopt autocd


HISTFILE=~/.cache/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

setopt autocd extendedglob nomatch notify
unsetopt beep notify
bindkey -v
export KEYTIMEOUT=1

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -D
# _comp_options+=(globdots)

# vim complete menu keys
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char


# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

bindkey -s '^a' 'bc -lq\n'

bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'

bindkey '^[[P' delete-char


# Aliasy
alias ytdla="youtube-dl -f 'bestaudio'"
alias panamint="ssh bpiech@panamint.ict.pwr.wroc.pl"
alias diablo="ssh bpiech@diablo.ict.pwr.wroc.pl"
alias vi="nvim"
alias vim="nvim"
alias ls="ls --color"
alias recordscr="ffmpeg -f x11grab -s 1280x800 -i :0.0 -f alsa -i default"
alias recordcam="ffmpeg -i /dev/video0 -f alsa -i default"
alias recordscrsnd="ffmpeg -f x11grab -s 1280x800 -i :0.0 -f pulse -i alsa_output.pci-0000_00_1b.0.analog-stereo.monitor -f pulse -i alsa_input.pci-0000_00_1b.0.analog-stereo -acodec libmp3lame -map 0:0 -map 1:0"
alias tenere="ssh baetek@tenere.roboticarena.pl -p 9753"
alias dotfiles='/usr/bin/git --git-dir=/home/barti/.dotfiles/ --work-tree=/home/barti'
