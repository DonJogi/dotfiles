if [ $OSTYPE = "msys" ]; then
		. ~/.bashrc_msys
elif [ $OSTYPE = "linux-gnu" ]; then
		. ~/.bashrc_ubuntu
fi

# Aliases
alias ls='ls -la | grep "^d" && ls -la | grep -v "^d"'
alias l='ls -la -h --color | grep "^d" && ls -la -h | grep "^-" && ls -la -h | grep "^l"'
alias git='LANG=en_GB git'
alias runemu="nohup $android_emulator_default &"
alias ..='cd ..'
alias cd..='cd ..'
alias gl='git log --graph --decorate --oneline'
alias gd='git difftool -y'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gf='git fetch'
alias gfp='git fetch | git pull'
alias rgrep=recursive-grep

# Functions
recursive-grep() {
grep -rin "$1" . --include "$2"
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

