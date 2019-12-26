# forkmantis's take on Greg's take on Holman's dotfiles

## What the hell are these dotfiles?

One of my favorite things about Unixy/Linuxy systems is that so much of their configuration lives as text files in the filesystem.  Because of this, users have great power in customizing their experience on these systems.  In the early days (mid 2000s), when I was regularly ssh-ing into many machines, my customizations were not uniformly applied from one machine to the next.  My inital solution to this problem was to create a git repo of my dotifiles, and to manually symlink them from ~/dotfiles into my home directory.  For a long time, that was good enough.

I eventually moved back intot he Windows world, and forgot about dotfiles.

Fast forward to ~2017 or so, when I was given a Mac at work.  I started thinking about dotfiles again.  I mentioned it in passing to my buddy @gregmajor, who got excited and told me about his [repo](https://github.com/gregmajor/dotfiles), which he forked from [Zack Holman](https://github.com/holman/dotfiles).  

There are 2 really nice things about this repo that have taken my dotfiles game to the next level.  The `redot` command in the root directory automates the symlinking that I used to do manually, and also other things like sourcing files, running install scripts, and installing software.  The second thing is that it allows modularization of the packages you want to manage.  Because of the way the `redot` command works, you don't have to lump all of your configurations together into a single `.bashrc` or `.zshrc`.  You can organize things into package specific folders, making it much easier to add, remove, and maintain packages and configurations.

## Conventions

### Global Conventions

- `bin/`: This directory is added to $PATH and is where to put useful scripts
- `homebrew/Brewfile`: This is a [Homebrew bundle file]("https://coderwall.com/p/afmnbq/homebrew-s-new-feature-brewfiles") that gets executed if you elect to do so when you run `redot`
- `lib` is where all the resources necessary for the redot command live.

### Topic Conventions
- `<topic>/path.sh`: Any file with this name will be sourced during `$PATH` setup
- `<topic>/install.sh`: Any file with this name will be executed if you elect to do so when you run `redot`
- `<topic>/*.symlink`: Any file with the `.symlink` extension will be symlinked into your `$HOME` directory
- `<topic>/*.source`: Any file with the `.source` extension will be sourced when you run `redot`

## Usage

Run this:

```sh
cd ~
git clone https://github.com/forkmantis/dotfiles.git ~/dotfiles
cd ~/dotfiles
./redot
```

The `redot` script will walk you through everything and won't make any change to your computer without asking permission first.

## I want my own dotfiles, what do I do?

If you like what you see here and what to get started, feel free to fork or clone the repo.  To make things easy, I  have created a `barebones` branch which has all of my own modules stripped out, and contains only the redot script and other minimal stuff you need to get going.  

If you start with my master branch, you'll probably want to clean out a lot of my stuff and add your own.  If you start with the barebones branch, you should only need to make additive changes.
