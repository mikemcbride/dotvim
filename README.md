# dotvim

These are my .vim files. I like them. You can use them if you want to.

## Installation

This project uses neovim, so if you don't have that installed already go get it first.

Neovim expects your config files to live inside of `~/.config/nvim`, so we'll be creating a symlink from the `nvim` folder in this project to that location on our local machines.

First, clone the repo:

```sh
git clone https://github.com/mikemcbride/dotvim
```

Next, symlink the `nvim` folder to `~/.config`. If you don't have a `~/.config` folder yet, do that first:

```sh
mkdir ~/.config
ln -s /path/to/project/dotvim/nvim ~/.config/nvim
```

That's it! Since neovim expects the config to be there, the next time you open a file all the config should be there. You might want to open `init.lua` and run `:PackerInstall` to make sure everything installs the first time.

## Adding plugins

Plugins are managed using Packer and are all in the `nvim/lua/user/plugins.lua` file. You can add anything you want in there.

## Updating

This project is set up to automatically check for updates to plugins anytime you make a change to the plugins file, but if you need to check for updates you can run `:PackerUpdate` anytime you're editing a file in nvim (doesn't have to be in this project).

## Removing plugins

Remove the plugin from `plugins.lua` and save the file. Nvim will ask you if you want to delete the plugin files.
