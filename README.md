# dotvim

These are my .vim files. I like them. You can use them if you want to.

## Installation

This needs to be setup in your home directory, and a symlink needs to be made to make .vimrc point to the vimrc file inside of .vim

I use git submodules to manage packages and pull them in using (pathogen.vim)[http://github.com/tpope/vim-pathogen]

If you already have a .vimrc but you want to symlink it (I recommend that for ease of backup), you will need to run this first:

`mv ~/.vimrc ~/.vim/vimrc`

To install, run these:

```
cd ~
git clone http://github.com/mmcbride1007/dotvim.git .vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```

## Adding plugins

Plugins are managed as git submodules and pulled in using pathogen. To add a plugin (using vim-fugitive as example)

```
git submodule add http://github.com/tpope/vim-fugitive.git bundle/vim-fugitive
git add .
git commit -m 'Adds vim-fugitive as submodule'
```
## Upgrading

Since all plugins are brought in via git submodules, it is super easy to upgrade. Simply run this:

`git submodule foreach git pull origin master`

## Removing plugins
```
cd ~/.vim
git rm --cached bundle/"module name"
rm -rf bundle/"module name"
git commit -am "Removing module X"
git push
```
