# Neovim Configuration

A structured Neovim configuration optimized for **Full Stack Web Development**.
Specialized for **TypeScript (Next.js, React)**, **PHP (Laravel, Blade)**, **SQL**, **Prisma**, and **Markdown** workflows.

## Description

This configuration provides a complete IDE-like experience within the terminal. It utilizes `lazy.nvim` for package management and includes pre-configured tools for modern web development, including Tailwind CSS support, Laravel Pint integration, and GitHub Copilot.

## Requirements

- **Neovim** >= 0.9.0
- **Git**
- **Node.js** & **npm** (Required for Mason, Pyright, Prettier, GitHub Copilot)
- **PHP** (Required for Intelephense and Pint)
- **C Compiler** (gcc or clang, required for Treesitter parsers)
- **Ripgrep** (Required for Telescope grep searches)
- **Nerd Font** (Recommended for icons — pick one at https://www.nerdfonts.com/)

## Installation

1.  **Backup existing configuration**

    ```sh
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  **Clone the repository**

    ```sh
    git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
    ```

3.  **Initialize**

    Start Neovim. `lazy.nvim` will automatically install all plugins, LSPs, and formatters.

    ```sh
    nvim
    ```

4.  **Setup GitHub Copilot**

    After installation, run the following command to authenticate Copilot:

    ```vim
    :Copilot auth
    ```

## Keybindings

Detailed keybindings are documented in [KEYBINDINGS.md](./KEYBINDINGS.md).

The Leader key is mapped to `<Space>`. Common commands include:

- `<Leader>ee`: Toggle File Explorer
- `<Leader>ff`: Find Files
- `<Leader>fs`: Live Grep
- `gd`: Go to Definition

## Usage Tips

### Managing Tools with Mason

This config uses **Mason** to manage external tools (LSPs, Formatters, Linters).
To check status, update, or install new tools manually, run:

```vim
:Mason
```

- **Install**: Press `i` on a package.
- **Update**: Press `u` to update all.
- **Uninstall**: Press `X` on an installed package.

### Changing the Theme

The default theme is **Tokyonight** (Night style, transparent).
To change the theme:

1.  Open `lua/plugins/theme.lua`.
2.  Change the plugin name (e.g., to `catppuccin/nvim` or `ellisonleao/gruvbox.nvim`).
3.  Update the `config` function to call the new theme's setup and `vim.cmd("colorscheme ...")`.
4.  Restart Neovim.

## Plugins & Addons Detail

The configuration is modular, located in `lua/plugins/`. Here is a breakdown of the installed tools:

### Core Infrastructure

- **lazy.nvim**: A modern plugin manager for Neovim. Handles automatic installation and lazy loading of plugins.
- **mason.nvim**: A package manager that runs _inside_ Neovim. Used to install and manage LSP servers (like `intelephense`, `ts_ls`), linters, and formatters (like `prettier`, `pint`) in a portable way.

### LSP & Formatting (Intellisense)

- **nvim-lspconfig**: The official configuration for the Neovim Language Server Client.
- **none-ls.nvim**: Bridges tools that don't speak LSP (like Prettier, Black, Pint) with Neovim's LSP client, allowing standard commands like "Format on Save" to work universally.
- **mason-lspconfig.nvim**: Closes the gap between Mason and lspconfig, ensuring installed servers are automatically configured.

### Autocompletion & AI

- **nvim-cmp**: The completion engine.
- **cmp-nvim-lsp**: Provides LSP completion sources to nvim-cmp.
- **LuaSnip**: Snippet engine required by nvim-cmp.
- **zbirenbaum/copilot.lua**: Provides AI-powered code suggestions via Ghost Text (inline hints).

### Syntax & Treesitter

- **nvim-treesitter**: Provides an abstract syntax tree for code, enabling advanced highlighting (better than Regex), indentation, and folding. Configured with parsers for TypeScript, PHP, Python, Lua, Markdown, etc.
- **nvim-ts-autotag**: Automatically closes and renames HTML/JSX/XML tags.

### UI & Navigation

- **tokyonight.nvim**: A clean, dark theme with transparent background support.
- **nvim-tree.lua**: A file explorer tree for sidebar navigation.
- **lualine.nvim**: A blazing fast and easy-to-configure statusline.
- **indent-blankline.nvim**: Adds indentation guides to all lines (including empty lines).
- **telescope.nvim**: A highly extendable fuzzy finder over lists. Used for finding files, grep searching, and diagnostics.
- **which-key.nvim**: Displays a popup with available keybindings if you pause halfway through a command sequence.

### Editing Utilities

- **autopairs**: Automatically closes brackets and quotes.
- **nvim-surround**: Easily add/change/delete surroundings (parentheses, brackets, quotes, XML tags).
- **gitsigns.nvim**: Super fast git integration. Shows signs in the gutter and allows inline staging/blame.
- **comment.nvim**: Smart and powerful comment plugin for neovim. Supports `gcc` (line) and `gb` (block) commenting.
- **todo-comments.nvim**: Highlights comments like `TODO`, `FIXME`, `HACK` in the code and listing them in Telescope.

## Language Support Summary

| Language          | LSP                         | Formatter       |
| :---------------- | :-------------------------- | :-------------- |
| **TypeScript/JS** | `ts_ls`                     | `prettier`      |
| **PHP**           | `intelephense`              | `pint`          |
| **Blade**         | -                           | `prettier`      |
| **SQL**           | `sqlls`                     | `sql_formatter` |
| **Prisma**        | -                           | -               |
| **HTML/CSS**      | `html`, `cssls`, `emmet_ls` | `prettier`      |
| **Tailwind**      | `tailwindcss`               | `prettier`      |
| **Lua**           | `lua_ls`                    | `stylua`        |
