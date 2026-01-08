# 💤 Neovim — Personal Configuration

This is my personal **Neovim** configuration, organized in a modular way and focused on productivity, backend/frontend development, and AI integration (Avante.nvim).

The goal is to allow anyone to:
- Clone the repository
- Point Neovim to it
- Quickly understand the structure and plugins used

---

## 📦 Prerequisites

- **Neovim** >= 0.10 (recommended 0.11+)
- **Git**
- Terminal with UTF-8 support
- **Nerd Font** installed (e.g., JetBrainsMono Nerd Font)

---

## 🚀 Installation

### 1️⃣ Clone the repository

```bash
git clone https://github.com/DaNnielRody/nvim-config.git
```

### 2️⃣ Use the configuration in Neovim

#### Option A — Use symlink (recommended)

```bash
rm -rf ~/.config/nvim
ln -s ~/nvim-config/nvim ~/.config/nvim
```

**Advantage:** any changes in the repository automatically reflect in Neovim.

#### Option B — Copy the files

```bash
rm -rf ~/.config/nvim
cp -r ~/nvim-config/nvim ~/.config/nvim
```

### 3️⃣ Open Neovim

```bash
nvim
```

**On first run:**
- Plugins will be installed automatically via `lazy.nvim`
- This may take a few minutes

---

## 📁 Project Structure

```
nvim/
├── init.lua
├── lazy-lock.json
└── lua/
    ├── config/
    │   ├── keybinds.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins/
        ├── lsp/
        ├── auto-pairs.lua
        ├── auto-sessions.lua
        ├── cmp.lua
        ├── colors.lua
        ├── emmet.lua
        ├── formatting.lua
        ├── gisttuff.lua
        ├── harpoon.lua
        ├── image-support.lua
        ├── init.lua
        ├── linting.lua
        ├── lualine.lua
        ├── mini.lua
        ├── noice.lua
        ├── oil.lua
        ├── oneliners.lua
        ├── showkey.lua
        ├── snacks.lua
        ├── tailwind-tools.lua
        ├── telescope.lua
        ├── todo-comments.lua
        ├── treesitter.lua
        ├── trouble.lua
        ├── ufo.lua
        ├── undotree.lua
        ├── vim-maximizer.lua
        └── wilder.lua
```

---

## 🧠 Configuration Organization

### `config/`

Responsible for global configurations:

- **`options.lua`** → Neovim options (set, opt)
- **`keybinds.lua`** → keyboard shortcuts
- **`lazy.lua`** → bootstrap and setup for lazy.nvim

### `plugins/`

Each plugin has its own file, following the single responsibility principle.

**Examples:**
- `telescope.lua` → fuzzy finder
- `treesitter.lua` → parsing and highlighting
- `cmp.lua` → autocompletion
- `lualine.lua` → statusline
- `noice.lua` → improved UI/UX
- `harpoon.lua` → quick navigation
- `undotree.lua` → change history
- `oil.lua` → buffer-based file explorer
- `trouble.lua` → diagnostics and errors
- `tailwind-tools.lua` → DX for TailwindCSS

The `plugins/init.lua` file centralizes plugin loading.

### `plugins/lsp/`

Specific **Language Server Protocol** configurations:
- Servers
- Attach
- Capabilities
- Integration with formatter and linter

---

## 🤖 Avante.nvim — AI in Neovim

This setup uses **Avante.nvim**, which integrates AI models directly into the editor.

🔗 **Official repository:** [https://github.com/yetone/avante.nvim](https://github.com/yetone/avante.nvim)

In the official repository you'll find:
- List of commands
- Prompt examples
- Configurations per provider (OpenAI, Anthropic, etc.)

### 🔐 Environment Variables (Avante AI)

Avante won't work without configured environment variables.

#### OpenAI

```bash
export OPENAI_API_KEY="your_api_key_here"
```

#### Anthropic (Claude)

```bash
export ANTHROPIC_API_KEY="your_api_key_here"
```

#### Azure OpenAI

```bash
export AZURE_OPENAI_API_KEY="your_api_key"
export AZURE_OPENAI_ENDPOINT="https://your-endpoint.openai.azure.com/"
```

#### Where to define?

Recommended to add to one of the files below:
- `~/.zshrc`
- `~/.bashrc`
- `~/.profile`

After defining:

```bash
source ~/.zshrc
```

---

## ✨ Happy coding!
