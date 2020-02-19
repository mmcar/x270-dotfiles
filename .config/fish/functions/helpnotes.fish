# Defined in /tmp/fish.bXcNFB/hn.fish @ line 3
function helpnotes
  if not test -d ~/.config/helpnotes
    mkdir ~/.config/helpnotes
  end
  $EDITOR ~/.config/helpnotes/$argv
end
