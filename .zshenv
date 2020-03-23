export EDITOR="nvim"
export VISUAL="$EDITOR"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

HOSTNAME=$(hostname)
if [ $HOSTNAME = "jogi5" ]; then
	export DOTNET_CLI_TELEMETRY_OPTOUT=true
	export ANDROID_HOME="$HOME/Android/Sdk"
	export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
	export PATH="$PATH:$HOME/.local/bin"
	export PATH="$PATH:$HOME/Scripts"
fi

export PATH="$PATH:$ANDROID_HOME/platform-tools"

