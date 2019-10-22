export EDITOR="vim"
export VISUAL="$EDITOR"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

HOSTNAME=$(hostname)
if [ $HOSTNAME = "jogi5" ]; then
	export DOTNET_CLI_TELEMETRY_OPTOUT=true
	export ANDROID_HOME="$HOME/Android/Sdk"
	export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
	#export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
	export JAVA_HOME="/home/jogi/Apps/android-studio/jre/"
	export PATH="$PATH:$HOME/.local/bin"
	export PATH="$PATH:$HOME/Scripts"
	export KWIN_TRIPLE_BUFFER=1
fi

export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"

