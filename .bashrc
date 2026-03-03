# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoredups
HISTSIZE=300
HISTFILESIZE=300

alias ls='ls --color=auto -a'
alias grep='grep --color=auto'
alias shutdown='shutdown 0'
alias rm='rm -r'
alias cp='cp -r'
alias ..='cd ..'
alias ~='cd ~/'
alias c='clear'

alias pacman="sudo pacman"
alias vi='nvim'

blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

if [[ "$(tty)" == "/dev/tty1" ]]; then
	start-hyprland
fi

pokemon-colorscripts -r 1 --no-title | fastfetch --file-raw -

function git_branch() {
    if [ -d .git ] ; then
		echo "($(git branch 2> /dev/null | awk '/\*/{print $2}'))"
    fi
}

PS1="${grn}\u${wht}@${blu}\h ${ylw}\w ${pur}\$(git_branch)\n${clr}> "
