### Create Alias ###
alias brewdeps="brew deps --installed --tree"
alias cls="clear"
alias cpuinfo="cat /proc/meminfo | less"
alias fzf="find * -type f | fzf"
alias gitconf="vim ~/.gitconfig"
alias relogin="exec $SHELL -l"
alias tmuxconf="vim ~/.tmux.conf"
alias ubuntu-v="cat /etc/os-release"
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias vimconf="vim ~/.config/nvim/init.vim"
alias zshpro="vim ~/.zprofile"
alias zshconf="vim ~/.zshrc"

### Change ZSH Options ###
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
source ~/.antigen/.zshrc.antigen

# Homebrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"

# wakatime
export ZSH_WAKATIME_PROJECT_DETECTION=true

#==================================================================#
#                   ⇓ [ Write Handy Functions ] ⇓                  #
#==================================================================#

### mkcd ###
function mkcd() {
    mkdir -p "$@" && cd "$_";
}

### Remove duplicate paths ###
export PATH=$(printf %s "$PATH" | awk -v RS=: -v ORS=: '!arr[$0]++')
