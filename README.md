# Vince's ZSH setup

The setup consists of a minimal setup script that will clone the desired plugins, and a
script to source to initialize those plugins.  Its a bit lighter weight than using
something like Oh My Zsh and gets the functionality that I actually care about


## Initial setup

To get started with the plugins, simply call:

```
sh init.sh
```

Requires git

then add:

```
source ~/.zsh/settings.zsh
```

to your `~/.zshrc` file
