# this file executes after /conf.d
pyenv init - | source
# theme_gruvbox dark medium

# Base16 Shell
# not needed once 3.1b1 release
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

starship init fish | source
