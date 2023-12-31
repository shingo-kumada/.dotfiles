#==================================================================#
#   Create Alias                                                   #
#==================================================================#

alias brewdeps="brew deps --installed --tree"
alias cls="clear"
alias cpuinfo="cat /proc/meminfo | less"
alias del="rm -ri"
alias depends="apt depends"
alias fzf="find * -type f | fzf"
alias gitconf="vim ~/.gitconfig"
alias grep="grep --color"
alias rdepends="apt rdepends"
alias relogin="exec $SHELL -l"
alias tmuxconf="vim ~/.tmux.conf"
alias ubuntu-v="cat /etc/os-release"
alias vim="nvim"
alias view="nvim -R"
alias vimconf="vim ~/.config/nvim/init.vim"
alias zshplug="vim ~/.antigen/.zshrc.antigen"
alias zshpro="vim ~/.zprofile"
alias zshconf="vim ~/.zshrc"

#==================================================================#
#   Change ZSH Options                                             #
#==================================================================#

setopt auto_pushd
setopt auto_cd
setopt hist_ignore_dups
setopt inc_append_history
setopt no_beep
setopt pushd_ignore_dups
setopt share_history

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

### Use ZSH Plugins ###
source $HOME/.antigen/.zshrc.antigen

#==================================================================#
#   Write Handy Functions                                          #
#==================================================================#

function mkcd() {
    mkdir -p "$@" && cd "$_";
}

#==================================================================#
#   Add path                                                       #
#==================================================================#


### Remove duplicate paths ###
export PATH=$(printf %s "$PATH" | awk -v RS=: -v ORS=: '!arr[$0]++')
