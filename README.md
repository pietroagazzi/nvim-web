# Neovim Configuration

A structured Neovim configuration optimized for **Full Stack Web Development**.
Specialized for **TypeScript (Next.js, React)**, **PHP (Laravel)**, and **Markdown** workflows.

## Description

This configuration provides a complete IDE-like experience within the terminal. It utilizes `lazy.nvim` for package management and includes pre-configured tools for modern web development, including Tailwind CSS support and Laravel Pint integration.

## Requirements

*   **Neovim** >= 0.9.0
*   **Git**
*   **Node.js** & **npm** (Required for Mason, Pyright, Prettier, etc.)
*   **PHP** (Required for Intelephense and Pint)
*   **C Compiler** (gcc or clang, required for Treesitter parsers)
*   **Ripgrep** (Required for Telescope grep searches)
*   **Nerd Font** (Recommended for icons)

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

## Specialized Features

### ⚡ TypeScript & Next.js
*   **LSP**: `ts_ls` (formerly tsserver) configured for TypeScript/JavaScript.
*   **Formatting**: `prettier` handles formatting for TS, JS, TSX, and JSON.
*   **Tailwind**: `tailwindcss` language server included for class autocompletion.

### 🐘 PHP & Laravel
*   **LSP**: `intelephense` provides intelligent code completion for PHP.
*   **Formatting**: `pint` (Laravel's default fixer) is auto-installed and configured via none-ls to format on save.
*   **Snippets**: Support for PHP framework snippets.

### 📝 Markdown & Writing
*   **Highlighting**: Full markdown syntax highlighting (including inline code blocks).
*   **Formatting**: `prettier` ensures clean and consistent markdown tables and lists.

## Key Bindings

Leader key: `<Space>`

### Essentials

| Key | Action |
| :--- | :--- |
| `<Leader>ee` | Toggle File Explorer |
| `<Leader>ff` | Find Files |
| `<Leader>fs` | Live Grep (Search text) |
| `<Leader>mp` | Format Current Buffer |

### LSP & Code

| Key | Action |
| :--- | :--- |
| `gd` | Go to Definition |
| `K` | Hover Documentation |
| `<Leader>ca` | Code Actions |
| `<Leader>rn` | Rename Symbol |
| `<Leader>D` | Show Diagnostics |

## Language Support Summary

| Language | LSP | Formatter |
| :--- | :--- | :--- |
| **TypeScript/JS** | `ts_ls` | `prettier` |
| **PHP** | `intelephense` | `pint` |
| **HTML/CSS** | `html`, `cssls`, `emmet_ls` | `prettier` |
| **Tailwind** | `tailwindcss` | `prettier` |
| **Python** | `pyright` | `black`, `isort` |
| **Lua** | `lua_ls` | `stylua` |