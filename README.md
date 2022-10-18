> **Warning**:
> This is my first attempt at making a semi "from-scratch" NeoVim configuration. Issues may pop up randomly.
>
> Also note that this configuration is best suited for NeoVim clients, such as NeoVide.
# NeoRS
Personal NeoVim configuration for Rust Development.
## Features
- LSP;
- ToggleTerm;
- Beginner-friendly keybindings;
- A nice, dark color-scheme for your eyes;
- Hierarchy/NvimTree;
- Smooth scrolling in Inspect Mode;
- LSP Info on the right bottom corner of your screen;
- Telescope;
- Tabs (with mouse support)

You may also make it compatible with C-Sharp to an extent by swapping the set LSP from `rust-analyzer`, to `csharp-ls`.
## Installation
1. Backup your current NeoVim config (if any)
2. `cd ~/.config`
3. `git clone https://github.com/vars1ty/NeoRS.git nvim`
4. Launch NeoVim and run these 2 commands: `PlugInstall` & `PlugUpdate`

Done!
