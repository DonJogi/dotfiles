export EDITOR="vim"
export VISUAL="$EDITOR"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

HOSTNAME=$(hostname)
if [ $HOSTNAME = "jogi5" ]; then
	export DOTNET_CLI_TELEMETRY_OPTOUT=true
	export ANDROID_HOME="$HOME/Android/Sdk"
	export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
	export ANDROID_EMULATOR_HOME="/run/media/jogi/Data/.android"
	export ANDROID_AVD_HOME="$ANDROID_EMULATOR_HOME/avd"
	#export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
	export JAVA_HOME="/home/jogi/Apps/android-studio-canary/jre"
	export PATH="$PATH:$HOME/.local/bin"
	export PATH="$PATH:$HOME/Scripts"
	export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
	export PATH="$PATH:$ANDROID_SDK_ROOT/tools"
	export KWIN_TRIPLE_BUFFER=1
fi

source $HOME/.zshaliases
export PATH="$PATH:$ANDROID_HOME/platform-tools"

