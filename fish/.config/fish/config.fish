if status is-interactive
  # Interactive-only startup goes here.
  if type -q starship
    starship init fish | source
  end
end

# Added by get-aspire-cli.sh
fish_add_path $HOME/.aspire/bin
fish_add_path $HOME/.local/bin
