export EDITOR="vim"
export VISUAL="$EDITOR"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

HOSTNAME=$(hostname)
if [ $HOSTNAME = "jogi5" ]; then
	DATA="/run/media/jogi/Data"
	export DOTNET_CLI_TELEMETRY_OPTOUT=true
	export ANDROID_HOME="$DATA/Programmieren/Android/Sdk"
	export ANDROID_SDK_ROOT="$DATA/Programmieren/Android/Sdk"
	export ANDROID_EMULATOR_HOME="$DATA/.android"
	export ANDROID_AVD_HOME="$ANDROID_EMULATOR_HOME/avd"
	#export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
	#export JAVA_HOME="/home/jogi/Apps/android-studio-canary/jre"
	export JAVA_HOME="/var/lib/flatpak/app/com.google.AndroidStudio/current/active/files/extra/android-studio/jre"
	export PATH="$JAVA_HOME/bin:$PATH"
	export PATH="$PATH:$HOME/.local/bin"
	export PATH="$PATH:$HOME/Scripts"
	export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
	export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
	export PATH="$PATH:$ANDROID_SDK_ROOT/tools"
	export KWIN_TRIPLE_BUFFER=1
fi

source $HOME/.zshaliases
export PATH="$PATH:$ANDROID_HOME/platform-tools"

