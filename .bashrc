# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

unset PS1
__condprint()
{
        local __retval=$?
        [ -z "$3" ] && return $__retval
        [ $3 -eq 0 ] 2>/dev/null && return $__retval
        echo -en " $1[\e[3$2m$3\e[0m]"
        return $__retval
}
PS1=$PS1"\[\e[0m\]┌"
PS1=$PS1"\`__condprint ⊕ 2 \j\`"
PS1=$PS1"\`__condprint † 1 \$?\`"
PS1=$PS1"\`__condprint Δ 6 \\\`git rev-parse --abbrev-ref HEAD 2>/dev/null\\\`\`"
PS1=$PS1"\[\e[0m\]\[\e[1m\] \u@\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\n"
PS1=$PS1"└ \$\[\e[0m\] "

# dircolors
eval $(dircolors -b ~/.dir_colors)

# Vim solarized8
sh ~/.vim/bundle/vim-solarized8/scripts/solarized8.sh

# Kubernetes aliases
source <(kubectl completion bash)
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
complete -F __start_kubectl k
export do="--dry-run=client -o yaml"
