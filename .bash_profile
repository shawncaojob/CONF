export ANSIBLE_ROLES_PATH=./roles
export VAG=~/VAGRANT
export SRC=~/SRC

## -----------------------------------------------------------------------------------------
## Created by Vivek Gite <vivek@nixcraft.com>
## See for more info: http://www.cyberciti.biz/tips/linux-unix-osx-bash-shell-aliases.html
## Note: I work a lot with Amazon EC2/CDN/Akamai/Server Backups etc so source code of those 
## scripts not included in this file. YMMV.
## -----------------------------------------------------------------------------------------



### VAGRANT
alias vu='/usr/local/bin/vagup'
alias vd='cd $VAG; /usr/local/bin/vagrant destroy'
alias vgs='/usr/local/bin/vagrant global-status'
alias vs='cd $VAG; vagrant status'

###

alias ls='ls -G;'
alias ll='ls -la;'
alias l.='ls -Gd .*;'
alias cd..='cd ..;'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias bc='bc -l'
alias sha1='openssl sha1'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias h='history'
alias j='jobs -l'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'
## alias header='curl -I'
## alias headerc='curl -I --compress'
## alias rm='rm -I --preserve-root'
## alias mv='mv -i'
## alias cp='cp -i'
## alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias apt-get="sudo apt-get"
## alias updatey="sudo apt-get --yes"
## alias update='sudo apt-get upgrade && sudo apt-get update'
alias root='sudo -i'
alias su='sudo -i'
alias music='mplayer --shuffle *'
alias wget='wget -c'
alias ff=ff13
alias browser=chrome 
alias df='df -H'
alias du='du -ch'
## alias top='atop'
###
