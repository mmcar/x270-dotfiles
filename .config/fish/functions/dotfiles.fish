function dotfiles
        /usr/bin/git --git-dir $HOME/.dotfiles.git/ --work-tree=$HOME $argv;
end
