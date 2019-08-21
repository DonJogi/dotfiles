export EDITOR="vim"
export VISUAL="$EDITOR"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

HOSTNAME=$(hostname)
if [ $HOSTNAME = "jogiM15" ]; then
	export DOTNET_CLI_TELEMETRY_OPTOUT=true
	export ANDROID_HOME="$HOME/Android/Sdk"
	export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
	export PATH="$PATH:$HOME/.local/bin"
	export PATH="$PATH:$HOME/Scripts"
elif [[ "$HOSTNAME" = *"1178P"* ]]; then
	export ANDROID_HOME="$HOME/Library/Android/sdk"
	export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/jre"
	export PATH=$PATH:$HOME/Scripts

	httpProxyServer=localhost:8079
	httpsProxyServer=localhost:8079
	export http_proxy=$httpProxyServer
	export https_proxy=$httpsProxyServer
	export HTTP_PROXY=$httpProxyServer
	export HTTPS_PROXY=$httpsProxyServer
fi

export PATH="$PATH:$ANDROID_HOME/platform-tools"

