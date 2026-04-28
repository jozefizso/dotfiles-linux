set -xU DOTNET_ROOT "$HOME/.dotnet"

fish_add_path -p $DOTNET_ROOT
fish_add_path -p "$DOTNET_ROOT/tools"
