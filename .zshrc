# Check if zplug is installed

source ~/.zplug/init.zsh

# Misc
export EDITOR=vim
export GIT_EDITOR="vim"
export PATH=/root/.zplug/bin:/root/.zplug/bin:/usr/share/zplug/bin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/usr/games:/usr/local/games:/snap/bin
export PAGER="most"
export LANG="en_US.UTF-8"

# History config
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=/root/.zplug/zsh_history
setopt append_history
setopt share_history
setopt long_list_jobs
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_find_no_dups
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_no_store
setopt interactivecomments
zstyle ':completion:*' rehash true

# Key binds
bindkey '\eOA'    history-substring-search-up
bindkey '\eOB'    history-substring-search-down
bindkey "\e[1;5D" backward-word
bindkey "\e[1;5C" forward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

# Zplug plugins
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "rimraf/k"
zplug "b4b4r07/emoji-cli"
zplug "mrowa44/emojify", as:command
zplug "k4rthik/git-cal", as:command
zplug "plugins/git",   from:oh-my-zsh
zplug "lib/completion", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/man", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/encode64", from:oh-my-zsh
zplug 'plugins/extract', from:oh-my-zsh
zplug "themes/ys", from:oh-my-zsh, as:theme
zplug "junegunn/fzf"
zplug "junegunn/fzf-bin",     from:gh-r,     as:command,     rename-to:fzf,     use:"*linux*amd64*"
zplug "plugins/git",   from:oh-my-zsh
source ~/.zplug/repos/junegunn/fzf/shell/completion.zsh
source ~/.zplug/repos/junegunn/fzf/shell/key-bindings.zsh

if zplug check b4b4r07/enhancd; then
    export ENHANCD_FILTER=fzf-tmux
fi

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi
zplug load
alias ls='ls --color'
alias ll='ls -lh'
alias la='ls -alh'
