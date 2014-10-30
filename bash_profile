export PATH=$PATH:~/bin/

# http://unix.stackexchange.com/questions/60499/how-to-set-the-bash-display-to-not-show-the-vim-text-after-exit
export TERM=xterm

PS_BOLD=$(tput bold)
PS_OFF=$(tput sgr0)
PS_USER=$(whoami)
PS_HOST=$(hostname)
PS_BLUE=$(tput setf 1)
PS_GREEN=$(tput setf 2)
PS_RED=$(tput setf 4)
PS1='
(${PS_BOLD}SUPERCOMP${PS_OFF}) ${PS_BOLD}${PWD}${PS_OFF}

${PS_GREEN}${PS_USER}${PS_OFF}@${PS_RED}${PS_HOST}${PS_OFF}:> '


source ./pelson_rc

alias conda_add="export PATH=~/envs/default/bin:$PATH"

source ~/envs/default/bin/activate default

