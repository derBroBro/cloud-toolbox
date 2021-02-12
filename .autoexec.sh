######################################################## SSH KEYS ######################################################
eval $(ssh-agent -s)

for key in $(ls -p /root/.ssh/ | grep -v -E  ".pub|known_hosts|config|.iml|/" )
do
	ssh-add "/root/.ssh/$key"
done

######################################################## ALIASES #######################################################

#GENERIC
alias getpubip='curl https://ipinfo.io/ip'
alias unproxy='unset HTTP_PROXY && unset HTTPS_PROXY && unset http_proxy && unset https_proxy'

#KUBECTL
alias k='kubectl'

#TERRAFORM
alias t='terraform14'
alias t14='terraform14'
alias t13='terraform13'
alias t12='terraform12'

######################################################## MOUNTED CAs ###################################################
update-ca-certificates

######################################################## UNSET CONTAINER ENV ###########################################
unset TILLER_NAMESPACE

######################################################## SET USER-SPECIFIC ENV #########################################

export MAKEFILE_REPO=/root/project/dev/github/makefiles

######################################################## DONE ##########################################################
echo "$( cd "$(dirname "$0")" ; pwd -P )/.autoexec.sh loaded successfully!"

