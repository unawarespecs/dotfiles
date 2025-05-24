#!/bin/bash
############################
# setup.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=$HOME/dotfiles        # dotfiles directory
olddir=$HOME/dotfiles_old # old dotfiles backup directory

files="config/neofetch 
       config/fontconfig
       config/i3 
       config/mpd 
       config/ncmpcpp 
       config/kitty 
       config/foot 
       aliases 
       bash_profile 
       profile
       bashrc 
       pam_environment
       xinitrc 
       xprofile 
       Xresources 
       zshenv 
       vimrc 
       zshrc"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# for neovim
echo "Creating symlink to vim config file for use in neovim"
mkdir -p $HOME/.config/nvim
ln -s $dir/vimrc $HOME/.config/nvim/init.vim

# configure vim-plug (for both vim and neovim)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# setup oh my zsh (requires git to be installed)
git clone https://github.com/ohmyzsh/ohmyzsh $HOME/.oh-my-zsh
# also setup zsh syntax highlighting while we're at it
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# setup finished
echo "dotfiles setup finished.\n"
echo "some stuff requires a manual install:"
echo "- thefuck (install thefuck using your package manager/python pip)"
echo "- vim-plug configured plugins (type `:PlugInstall` in vim)"
echo "- fortune quotes on shell launch (install fortune-mod using your package manager)\n"
echo "have fun!"

