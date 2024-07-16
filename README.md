# My Dotfiles

This repository contains my personal dotfiles and configurations for various tools and applications. It is set up to be managed using GNU Stow for easy symlink management.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Included Configurations](#included-configurations)
- [Structure](#structure)
- [Updating Submodules](#updating-submodules)

## Installation

To install these dotfiles on your system, follow these steps:

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/taisytran/dotfiles.git ~/dotfiles
   ```

2. **Navigate to the dotfiles Directory:**

   ```bash
   cd ~/dotfiles
   ```

3. **Install GNU Stow:**

   On macOS, you can use Homebrew to install Stow. If you don't have Homebrew installed, first install it from [brew.sh](https://brew.sh).

   ```bash
   brew install stow
   ```

4. **Install the Dotfiles Using Stow:**

   Use the following command to set up the configurations:

   ```bash
   stow --target ~ <package>
   ```

   Replace `<package>` with the name of the directory you want to install (e.g., `nvim`, `zsh`, `git`).

## Usage

Once installed, the configurations will be active in your system. Here are a few examples:

- **Neovim:** Open Neovim to see the custom configuration.
  
  ```bash
  nvim
  ```

- **Zsh:** Start a new terminal session to use the custom `.zshrc`.

- **Git:** The custom `.gitconfig` will be used for all Git operations.

## Included Configurations

- **Neovim:** Custom configurations and plugins for Neovim.
- **Zsh:** `.zshrc` with aliases, functions, and theme settings.
- **Git:** `.gitconfig` with aliases and settings.

## Structure

The repository is organized as follows:

```plaintext
dotfiles/
├── README.md
├── nvim/
│   └── .config/
│       └── nvim/
│           ├── init.vim
│           └── lua/
│               └── plugins.lua
├── zsh/
│   └── .zshrc
└── git/
    └── .gitconfig
```

## Updating Submodules

To update all submodules to their latest versions, you can use the provided Rake task. This task initializes and updates all submodules recursively.

1. **Navigate to the dotfiles Directory:**

   ```bash
   cd ~/dotfiles
   ```

2. **Run the Rake Task:**

   ```bash
   rake update
   ```

This will initialize any uninitialized submodules and update all submodules to their latest commits from their respective remote repositories.
