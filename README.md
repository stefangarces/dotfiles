# Dotfiles

Managing my dotfiles

## Steps to bootstrap a new laptop

1. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:stefangarces/dotfiles.git

# ...or use HTTPS and switch remotes later.
git clone https://github.com/stefangarces/dotfiles.git
```


2. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```


3. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle
```

## Get latest stable nvim

### 1. Install dependencies:

```
sudo apt-get install ninja-build gettext cmake unzip curl
```

### 2. Clone Neovim repo:

```
git clone https://github.com/neovim/neovim.git

cd neovim
```

### 3. Checkout stable version (0.9.1)? :

```
git checkout v0.9.1
```

### 4. Build and install:

```
make CMAKE_BUILD_TYPE=Release

sudo make install
```


## TODO List

- Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command) to record and restore System Preferences and other macOS configurations.
- Organize these growing steps into multiple script files.
- Automate symlinking and run script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot).
- Revisit the list in [`.zshrc`](.zshrc) to customize the shell.
- Make a checklist of steps to decommission your computer before wiping your hard drive.

## Hopefully done!
