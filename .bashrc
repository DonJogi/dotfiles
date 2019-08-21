if [ $OSTYPE = "msys" ]; then
		. ~/.bashrc_msys
elif [ $OSTYPE = "linux-gnu" ]; then
		. ~/.bashrc_ubuntu
fi

# Aliases
alias ls='ls -la | grep "^d" && ls -la | grep -v "^d"'
alias l='ls -la -h --color | grep "^d" && ls -la -h | grep "^-" && ls -la -h | grep "^l"'
#alias ls='ls --color -h --group-directories-first' # Does not work in mingw?
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
alias e=runemacs
alias n=notepad++
alias bu='./gradlew bintrayUpload'
alias cemacs='emacs -nw'

# Functions
recursive-grep() {
grep -rin "$1" . --include "$2"
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [[ "$HOSTNAME" = *"1178P"* ]]; then
		httpProxyServer=localhost:8079
		httpsProxyServer=localhost:8079

		export http_proxy=$httpProxyServer
		export https_proxy=$httpsProxyServer
		export HTTP_PROXY=$httpProxyServer
		export HTTPS_PROXY=$httpsProxyServer
fi
