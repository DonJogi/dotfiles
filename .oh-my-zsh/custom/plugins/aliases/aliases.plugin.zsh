# General
alias ppj="vs | python -m json.tool | tee /dev/tty | cs"
alias hibernate="systemctl hibernate"

# git
alias gbvv="git branch -vv"
alias gbvva="git branch -vva"
alias gpod="git push origin --delete"
alias gbdo="gpod"
alias gfl="gfa && gl"
alias gt="git difftool"
alias gty="gt -y"
alias gloga='git log --oneline --decorate --color --graph --all'
alias gloa='git log --oneline --decorate --color --all'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gbm='git branch -m'
alias grbd='git rebase develop'
alias glrd='gitFetchPullRebaseOnDevelop'
alias glt="git log --pretty=format:'%C(yellow)%h %Cred%cd %Cblue%an%Cgreen%d %Creset%s' --date=local --topo-order --color=always"
alias gltg="glt --graph"
alias glts="glt --show-signature"
alias gd="git diff --word-diff"
alias gcod="gco develop"
alias gcom="gco master"

gitFetchPullRebaseOnDevelop() {
	git checkout develop
	git fetch --prune
	git pull
	git checkout - 
	git rebase develop
}

# Delete .orig files
alias trashorig="gst | grep -E '.+\..+\.orig' | xargs trash"

# Gradle
alias gw='./gradlew'
alias gwo='./gradlew --offline'

# ADB
alias adl="adb devices -l"

# Platform specific 
UNAME=$(uname)
if [ $UNAME = "Darwin" ]; then
	alias cs="pbcopy"
	alias vs="pbpaste"
	alias te="open -t"
	alias simulator="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
	if hash gls 2>/dev/null; then
		alias lsa="gls -lah --color=auto --group-directories-first"
	fi
	alias emacs="~/Documents/Apps/Emacs.app/Contents/MacOS/Emacs -nw"
	alias emacsgui="~/Documents/Apps/Emacs.app/Contents/MacOS/Emacs"
else
	if hash trash-put 2>/dev/null; then
	     alias trash="trash-put"
	fi
	alias cs="xclip -selection clipboard"
	alias vs="xclip -o -selection clipboard"
	alias lsa="ls -lah --group-directories-first"
	alias au="sudo apt update && apt list --upgradable"
	alias pu="sudo pacman -Syu"
	alias plasma-restart="kquitapp5 plasmashell && kstart plasmashell"
fi

