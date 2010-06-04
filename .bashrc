OSTYPE=`uname`

C_RED="\033[31m"
C_GREN="\033[32m"
C_ORGN="\033[33m"
C_BLUE="\033[34m"
C_PRPL="\033[35m"
C_TRKS="\033[36m"
C_NRML="\033[0m"
C_GRAY="\033[38m"
C_WITE="\033[39m"


if [ $UID = 0 ]; then
    PS1="$C_RED\u$C_NRML@$C_PRPL\h:$C_WITE\w\$ $C_NRML"
else
    PS1="$C_ORGN\u$C_NRML@$C_PRPL\h:$C_WITE\w\$ $C_NRML"
fi

complete -cf sudo

alias psgrep="ps aux | grep $1"
alias note="cat <<EOF>>~/.notes"
alias pnote="cat ~/.notes"


export PAGER=`which less`
export EDITOR=`which vim`

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

shopt -s histappend
shopt -s checkwinsize

case "$OSTYPE" in
    Linux   )
            alias ls='ls --color'
            alias dun="du -ah --max-depth=1"
            ;;
    FreeBSD )
            alias ls='ls -G'
            alias dun="du -h -d 1"
            export TERM='linux'
            # Fix bsd-utf headace
            export LANG='nb_NO.UTF-8' 
            ;;
    *       )
            alias ls='ls --color'
esac


if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
  logout
fi

