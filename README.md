# **Personal Kickstart.nvim**

A personalized Neovim configuration based on the excellent [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) project. This repository serves as my daily driver, designed to be a robust, efficient, and easily maintainable editing environment.

* **Branch:** hanoch (My active development branch)  
* **Font:** JetBrains Mono Nerd Font (Required for UI icons and glyphs)  
* **Goal:** A "starting point" configuration that is small, single-file, thoroughly documented, and ready for professional development work immediately after cloning. Unlike pre-packaged "distributions," this config is transparent: meant to be read, understood, and modified by you.

## **Quick Installation**

The installation process is automated as much as possible. Choose your operating system below to install all necessary dependencies (Neovim, high-performance search tools, build utilities, and patched fonts) and clone the configuration.

### **1. Install Dependencies & Font**

To ensure a smooth experience, we need to install not just the editor, but the ecosystem around it. This includes:

* **Neovim (v0.9+):** The editor core.  
* **Ripgrep (rg) & fd:** Extremely fast search tools used by Telescope for fuzzy finding files and text.  
* **Build Tools (gcc, make):** Required to compile C-based plugins (like telescope-fzf-native) and TreeSitter parsers.  
* **Nerd Fonts:** Patched fonts that include icon glyphs for the UI (status lines, file tree icons, etc.).

### **🍎 macOS (Homebrew) \- Daily Driver**

Prerequisites: Ensure [Homebrew](https://brew.sh/) is installed and updated (brew update).
```bash
# 1. Install Neovim and essential tools  
#   'neovim'       : The editor  
#   'git'          : Version control and plugin management  
#   'make', 'gcc'  : Compilers for native extensions and TreeSitter  
#   'unzip'        : Required for extracting Mason packages/Language Servers  
#   'ripgrep', 'fd': High-performance search backends for Telescope  
brew install neovim git make gcc unzip ripgrep fd

# 2. Install JetBrains Mono Nerd Font 
brew install --cask font-jetbrains-mono-nerd-font

# 3. Verify installation (Optional)  
nvim --version && rg --version
```

### **🐧 Arch Linux (Pacman)**

Arch Linux provides the latest packages by default, making the setup very clean.
```bash
# 1. Install Neovim, tools, and font  
#   'base-devel'             : Includes gcc, make, and other build essentials  
#   'ttf-jetbrains-mono-nerd': The official Arch package for the font  
sudo pacman -S --needed --noconfirm neovim git base-devel unzip ripgrep fd ttf-jetbrains-mono-nerd

# 2. Verify installation (Optional)  
nvim --version
```
### **🐧 Ubuntu / Debian (Apt)**

Ubuntu's default repositories often contain outdated versions of Neovim. We must use the PPA to get the stable release required for this config.

```bash
# 1. Add Neovim Unstable PPA (Recommended for latest stable features)  
# This ensures we get Neovim 0.9+ rather than the old version in apt defaults.  
sudo add-apt-repository ppa:neovim-ppa/unstable -y  
sudo apt update

# 2. Install Neovim and tools  
# Note: 'fd' is package named 'fd-find' on Ubuntu/Debian to avoid name collision.  
# 'xclip': Required for system clipboard integration on X11  
sudo apt install -y neovim git make gcc unzip ripgrep fd-find xclip

# 3. Install JetBrains Mono Nerd Font manually  
# Since standard repos don't always have the latest Nerd Fonts, we fetch it directly.  
mkdir -p ~/.local/share/fonts  
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz

# Extract and clean up  
tar xf JetBrainsMono.tar.xz  
rm JetBrainsMono.tar.xz

# Refresh font cache so the system sees the new font  
fc-cache -fv

# 4. Verify installation (Optional)  
nvim --version
```
### **2. Clone Configuration**

We will clone the repository to the standard Neovim configuration path (\~/.config/nvim). The command below safely backs up any existing configuration to prevent data loss.
```bash
# Optional: Backup existing config if you have one  
# If a folder exists at these paths, it is renamed to .bak  
mv "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim.bak 2>/dev/null  
mv "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim.bak 2>/dev/null

# Clone the 'hanoch' branch  
# We specifically target the 'hanoch' branch where your personal customizations live.  
git clone -b hanoch git@github.com:Heniland/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
### **3. Post-Install Setup**

1. **Configure Terminal Font:**  
   * Open your terminal emulator's preferences (iTerm2, Alacritty, Kitty, GNOME Terminal, etc.).  
   * Set the font family to **"JetBrainsMono Nerd Font"** (or "JetBrainsMono NF").  
   * *Why?* Without this, status bars and file icons will appear as broken rectangle characters.  
2. **First Launch & Plugin Sync:**  
   * Run `nvim` in your terminal.  
   * **Wait:** You will see a window pop up showing `lazy.nvim` installing plugins.  
   * Allow the installation to finish. If any errors occur regarding "compilation," simply restart Neovim, and the build tools installed earlier will handle it.  
3. **Health Check (Optional):**  
   * Run `:checkhealth` inside Neovim to verify that the editor can find external tools (like `npm`, `node`, `python`, `git`, etc.).

## **Maintenance & Workflow**

### **Updating Your Config**

Since this is a git repository, updating is as simple as pulling the latest changes from GitHub.
```bash
cd "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# Pull the latest commits from your personal branch  
git pull origin hanoch
```
After pulling updates, it is often good practice to run `:Lazy sync` inside Neovim to update plugins.

### **Merging Upstream Updates**

To keep this fork in sync with the original [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) (to get bug fixes or new improvements from the community), follow this workflow:
```bash
# 1. Add the upstream remote (only needs to be done once)  
git remote add upstream https://github.com/nvim-lua/kickstart.nvim.git

# 2. Fetch the latest upstream changes  
git fetch upstream

# 3. Merge upstream/master into your current branch  
git merge upstream/master
```
*Note: You may encounter merge conflicts if you have heavily modified sections that upstream also changed. Resolve these in the editor using the diff markers.*

## **FAQ & Troubleshooting**

* What is `init.lua`?  
  This is the heart of the configuration. Unlike other distributions that split settings into dozens of files, `kickstart` keeps everything in `init.lua` (mostly). This makes it easier to "Ctrl+F" to find keymaps, options, or plugin settings. Read this file\! It is heavily commented to serve as a tutorial.  
* How do I install Language Servers (LSP)?  
  We use `mason.nvim` to manage external tooling.  
  1. Open Neovim and type `:Mason`.  
  2. Use `Ctrl+f` to search for a language (e.g., `python`, `typescript`, `gopls`).  
  3. Press `i` to install.  
  * *Automation:* You can also add server names to the `servers` table in `init.lua` to have them automatically installed on startup.  
  * **Node/Go Requirements:** Note that `Mason` installs the *servers*, but some servers (like `ts_ls`) require `npm` to be installed on your system OS first. 
* Why do icons look weird/broken?  
  This is almost always a font issue.  
  1. Ensure you installed **JetBrains Mono Nerd Font** (Step 1).  
  2. Ensure your Terminal is actually *using* that font.  
  3. If using a different Nerd Font, update the font name in your terminal settings.  
* Why specific OS instructions?  
  Kickstart is more than just Lua files; it relies on system-level binaries.  
  * **Ripgrep (`rg`):** Used by Telescope for grep searching across your project. It is significantly faster than standard `grep`.  
  * **C Compiler (`gcc`):** Required by TreeSitter to compile language parsers (syntax highlighting) and by Telescope FZF Native for sorting algorithms.  
  * **Clipboard:** On Linux, tools like `xclip` or `wl-copy` allow Neovim to share the system clipboard (`"+y`).
