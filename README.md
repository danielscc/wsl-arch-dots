# wsl-arch-dots

Dotfiles for WSL Arch Linux.

## Structure

```
shell/                          # Shell configs
├── .zshrc                      # → ~/.zshrc (oh-my-zsh + plugins + path)
├── .bashrc                     # → ~/.bashrc
└── oh-my-zsh-custom/           # → ~/.oh-my-zsh/custom/
    ├── aliases.zsh
    ├── variables.zsh
    └── themes/aphrodite/       # Aphrodite terminal theme
        ├── aphrodite.zsh-theme
        └── aphrodite.theme.sh

git/                            # Git config
└── .gitconfig                  # → ~/.gitconfig

terminal/                       # Terminal emulator configs
└── alacritty/                  # → ~/.config/alacritty/ (Windows WSL host)
    └── alacritty.toml

config/                         # ~/.config/
├── fastfetch/                  # → ~/.config/fastfetch/
│   ├── config.jsonc
│   └── logos/
├── nvim/                       # → ~/.config/nvim/ (LazyVim)
│   ├── init.lua
│   ├── lazyvim.json
│   ├── stylua.toml
│   ├── .neoconf.json
│   └── lua/
│       ├── config/
│       │   ├── autocmds.lua
│       │   ├── keymaps.lua
│       │   ├── lazy.lua
│       │   └── options.lua
│       └── plugins/
│           ├── example.lua
│           └── theprimeagen-vimbegood.lua
└── opencode/                   # → ~/.config/opencode/
    ├── opencode.jsonc
    ├── package.json
    └── .gitignore
```

## Install

```bash
# Clone and symlink
git clone <repo-url> ~/dev/wsl-arch-dots

# Shell
ln -sf ~/dev/wsl-arch-dots/shell/.zshrc ~/.zshrc
ln -sf ~/dev/wsl-arch-dots/shell/.bashrc ~/.bashrc
ln -sfn ~/dev/wsl-arch-dots/shell/oh-my-zsh-custom ~/.oh-my-zsh/custom

# Git
ln -sf ~/dev/wsl-arch-dots/git/.gitconfig ~/.gitconfig

# Config dirs
ln -sf ~/dev/wsl-arch-dots/config/fastfetch ~/.config/fastfetch
ln -sf ~/dev/wsl-arch-dots/config/nvim ~/.config/nvim
ln -sf ~/dev/wsl-arch-dots/config/opencode ~/.config/opencode
```

## Prerequisites

- **Oh My Zsh**: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- **NVM**: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash`
- **pnpm**: `curl -fsSL https://get.pnpm.io/install.sh | sh -`
- **Neovim** (>=0.9): LazyVim will bootstrap on first launch
- **Fastfetch**: `sudo pacman -S fastfetch`
- **Alacritty**: Windows-side terminal, symlink from WSL to `~/.config/alacritty/alacritty.toml`
