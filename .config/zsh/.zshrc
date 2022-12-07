
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000000
setopt autocd extendedglob
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/barti/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# my config from bashrc
alias vi="nvim"

alias ls='ls --color=auto'
#alias ytdla="youtube-dl -f 'bestaudio'"
alias ytdla="yt-dlp -f 'bestaudio'"
alias panamint="ssh -X bpiech@panamint.ict.pwr.wroc.pl"
alias diablo="ssh -X bpiech@diablo.ict.pwr.wroc.pl"
alias tenere="ssh -X baetek@tenere.roboticarena.pl -p 9753"
alias x2goclient="x2goclient --home=$HOME/.config"
alias record="ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0 -f pulse -ac 2 -i 0"
alias spi="ssh pi@87.205.116.41"
alias sbartek_pi="ssh bartek@87.205.116.41"
alias mpvyt720p="mpv --ytdl-format=\"bestvideo[height<=?720]+bestaudio/best\""

# managing bare dotfiles repo
GIT_DIR="$HOME/dotfiles/"
alias dotfiles="/usr/bin/git --git-dir=$GIT_DIR --work-tree=$HOME"
dotfiles config --local status.showUntrackedFiles no
