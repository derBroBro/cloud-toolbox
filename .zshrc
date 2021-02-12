#@IgnoreInspection BashAddShebang
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(aws git helm kops kubectl terraform)

source $ZSH/oh-my-zsh.sh

######################################################## SOURCE ########################################################
sleep 1
if [ -f "/root/.autoexec.sh" ]; then
    source /root/.autoexec.sh
fi
