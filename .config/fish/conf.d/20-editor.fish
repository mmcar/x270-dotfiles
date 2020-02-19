if test -z "$EDITOR"
  if which nvim > /dev/null
    set -gx EDITOR "nvim"
  else if which vim > /dev/null
    set -gx EDITOR "vim"
  end
end
