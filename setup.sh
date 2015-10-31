#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo -n "Creating symbolic links for config files..."
[ ! -d $HOME/.janus ] && ln -s $SCRIPT_DIR/.janus $HOME/.janus
[ ! -d $HOME/.hammerspoon ] && ln -s $SCRIPT_DIR/.hammerspoon $HOME/.hammerspoon
[ ! -f $HOME/.vimrc.before ] && ln -s $SCRIPT_DIR/.vimrc.before $HOME/.vimrc.before
[ ! -f $HOME/.vimrc.after ] && ln -s $SCRIPT_DIR/.vimrc.after $HOME/.vimrc.after
[ ! -f $HOME/.tmux.conf ] && ln -s $SCRIPT_DIR/.tmux.conf $HOME/.tmux.conf
[ ! -f $HOME/.gitconfig ] && ln -s $SCRIPT_DIR/.gitconfig $HOME/.gitconfig
[ ! -f $HOME/.gitignore_global ] && ln -s $SCRIPT_DIR/.gitignore_global $HOME/.gitignore_global
echo "done"

echo -n "Install open files limit config for launchctl..."
sudo cp limit.maxfiles.plist /Library/LaunchDaemons/limit.maxfiles.plist
sudo chmod 644 /Library/LaunchDaemons/limit.maxfiles.plist
sudo cp limit.maxproc.plist /Library/LaunchDaemons/limit.maxproc.plist
sudo chmod 644 /Library/LaunchDaemons/limit.maxproc.plist
echo "done"
echo "NOTE: reboot system to let launchctl config take effect"

echo -n "Install and setup oh-my-fish..."
brew install fish chruby-fish autojump
curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish | fish
mkdir -p $HOME/.config/fish
ln -sF $SCRIPT_DIR/fish/config.fish $HOME/.config/fish/config.fish
echo "done"

echo "Changing default shell to fish..."
chsh -s /usr/local/bin/fish
echo "done"
