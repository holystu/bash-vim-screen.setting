# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
# User specific environment and startup programs
function rm() { mv -i $* ~/trash; }
function orm() {
	unset -f rm
	echo "rm opened"
}
function crm(){
	function rm() {	mv -i $* ~/trash/; }
	echo "rm closed"
}
function pushd() { builtin pushd $@ > /dev/null; }
alias l='ll'
alias la='ll -A'
alias lt='ll -rt'
alias cd='pushd'
alias cd-='popd'
alias d='dirs -v'
alias vi='vim'

PATH=$HOME/bin:$HOME/tools/mauve_snapshot_2015-02-13/:$HOME/tools/medusa-1.6/:$PATH
export LANG="zh_TW.UTF-8"
export PS1="\[$(tput bold)\]\[\033[0;36m\]{\u}\[\033[0;31m\]151\[\033[1;37m\]@\A\[\033[1;33m\]:\w$\[\033[0m\]\[$(tput sgr0)\]"
export PATH
