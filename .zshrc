[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias bat="batcat"
alias cat="batcat"
alias pcp="python3 ~/Documents/CP-Helper/parser.py"
alias runcp="python3 ~/Documents/CP-Helper/execute.py"
alias cdcf="cd ~/Documents/Codeforces"
alias cdsp="cd ~/Documents/Spoj"
alias vi="nvim"
alias vim="nvim"
alias dotgit="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

export TERM=xterm-256color
PATH=$HOME/.local/bin:$PATH
PATH=$HOME/FileInstall/nvim-linux64/bin:$PATH

t1() {
    cp ~/Documents/CP-Helper/template.cpp "$1"; 
    dat=`date "+%D %T"` && sed -i "s|\$DATE|${dat}|g" "$1";
}
t2() {
    cp ~/Documents/CP-Helper/template2.cpp "$1"; 
    dat=`date "+%D %T"` && sed -i "s|\$DATE|${dat}|g" "$1";
}
t3(){
    cp ~/Documents/CP-Helper/template_random.cpp "$1"; 
}
car() {
    cp ~/Documents/CP-Helper/template.cpp "$1"; 
    dat=`date "+%D %T"` && sed -i "s|\$DATE|${dat}|g" "$1";
    vi "$1";
}
cdcp() {
    mkdir -p "$1";
    cp ~/Documents/CP-Helper/template.cpp "$1"/main.cpp; 
    dat=`date "+%D %T"` && sed -i "s|\$DATE|${dat}|g" "$1"/main.cpp;
    vi "$1"/main.cpp;
}
cocp() {
    cd /home/tgbao2703/Documents/;
    git add -A; 
    git commit -m 'updated'; 
    git push origin master;
}

if [[ $TILIX_ID ]]; then
        source /etc/profile.d/vte-2.91.sh
fi
source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle git
#antigen bundle heroku
#antigen bundle pip
#antigen bundle lein
#antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle command-not-found
antigen bundle colored-man-pages
antigen bundle Aloxaf/fzf-tab

# Load the theme.
#antigen theme denysdovhan/spaceship-prompt
antigen theme dracula/zsh dracula

# Tell Antigen that you're done.
antigen apply
