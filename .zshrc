# StarShip Promp ZSH
eval "$(starship init zsh)"
# On start changes directory to Desktop
if [[ $EUID -ne 0 ]]; then
    cd ~/Desktop/
fi
#alias
alias work="cd ~/Work"
alias cyber="cd ~/CyberPatriot"
alias desk="cd ~/Desktop"
alias dow="cd ~/Downloads/"
alias ls="exa"
alias tree="exa -a --tree"
alias aeacus-build-linux-production="go build -ldflags '-s -w ' -o ./aeacus ./src; go build -ldflags '-w -s' -tags phocus -o  ./phocus ./src"
export PATH=$PATH:~/.local/bin
#pkl to txt file
pkl() (
python3 -c 'import pickle,sys;d=pickle.load(open(sys.argv[1],"rb"));print(d)' "$1" )

#GPG Signing Github
export GPG_TTY=$(tty)


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

 #>>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aadit/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aadit/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aadit/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aadit/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


echo -e " \e[34m
 █████╗  █████╗ ██████╗ ██╗████████╗     ██████╗ ██╗   ██╗██████╗ ████████╗ █████╗ 
██╔══██╗██╔══██╗██╔══██╗██║╚══██╔══╝    ██╔════╝ ██║   ██║██╔══██╗╚══██╔══╝██╔══██╗
███████║███████║██║  ██║██║   ██║       ██║  ███╗██║   ██║██████╔╝   ██║   ███████║
██╔══██║██╔══██║██║  ██║██║   ██║       ██║   ██║██║   ██║██╔═══╝    ██║   ██╔══██║
██║  ██║██║  ██║██████╔╝██║   ██║       ╚██████╔╝╚██████╔╝██║        ██║   ██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝   ╚═╝        ╚═════╝  ╚═════╝ ╚═╝        ╚═╝   ╚═╝  ╚═╝
"
# Install Ruby Gems to ~/gems
export PATH="$HOME/gems/bin:$PATH"
export PATH="$HOME/gems/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin


source /home/aadit/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /home/aadit/.zsh/completion.zsh
# Load completion config
source $HOME/.zsh/completion.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist
source /home/aadit/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
