# Keybindings

The `<Leader>` key is mapped to `<Space>`.

## General & Window Management

| Mode       | Key          | Action                                |
| :--------- | :----------- | :------------------------------------ |
| **Insert** | `jk`         | Exit Insert Mode (Alternative to Esc) |
| **Normal** | `<Leader>nh` | Clear search highlights               |
| **Normal** | `<Leader>sv` | Split window vertically               |
| **Normal** | `<Leader>sh` | Split window horizontally             |
| **Normal** | `<Leader>se` | Equalize window sizes                 |
| **Normal** | `<Leader>sx` | Close current split                   |

## Session Management

| Mode       | Key          | Action                          |
| :--------- | :----------- | :------------------------------ |
| **Normal** | `<Leader>qs` | Restore session for current dir |
| **Normal** | `<Leader>ql` | Restore last session            |
| **Normal** | `<Leader>qd` | Don't save current session      |

## File Explorer (NvimTree)

| Mode       | Key          | Action                              |
| :--------- | :----------- | :---------------------------------- |
| **Normal** | `<Leader>ee` | Toggle file explorer                |
| **Normal** | `<Leader>ef` | Focus file explorer on current file |
| **Normal** | `<Leader>ec` | Collapse explorer                   |
| **Normal** | `<Leader>er` | Refresh explorer                    |

## Fuzzy Finder (Telescope)

| Mode       | Key          | Action                           |
| :--------- | :----------- | :------------------------------- |
| **Normal** | `<Leader>ff` | Find files (fuzzy search)        |
| **Normal** | `<Leader>fr` | Find recent files                |
| **Normal** | `<Leader>fs` | Live grep (search string in cwd) |
| **Normal** | `<Leader>fc` | Find string under cursor         |

## Git Integration (Gitsigns)

| Mode       | Key          | Action            |
| :--------- | :----------- | :---------------- |
| **Normal** | `]h`         | Next Hunk         |
| **Normal** | `[h`         | Prev Hunk         |
| **Normal** | `<Leader>hs` | Stage Hunk        |
| **Normal** | `<Leader>hr` | Reset Hunk        |
| **Normal** | `<Leader>hS` | Stage Buffer      |
| **Normal** | `<Leader>hp` | Preview Hunk      |
| **Normal** | `<Leader>hb` | Blame Line        |
| **Normal** | `<Leader>tb` | Toggle Line Blame |

## Editing & Surround

| Mode       | Key                | Action                        |
| :--------- | :----------------- | :---------------------------- |
| **Normal** | `ys<motion><char>` | Add surround (e.g. `ysiw"`)   |
| **Normal** | `ds<char>`         | Delete surround (e.g. `ds"`)  |
| **Normal** | `cs<old><new>`     | Change surround (e.g. `cs"'`) |
| **Visual** | `S<char>`          | Add surround to selection     |

## LSP & Code Actions

| Mode       | Key          | Action                              |
| :--------- | :----------- | :---------------------------------- |
| **Normal** | `gD`         | Go to declaration                   |
| **Normal** | `gd`         | Go to definition                    |
| **Normal** | `gi`         | Go to implementation                |
| **Normal** | `gt`         | Go to type definition               |
| **Normal** | `K`          | Hover documentation                 |
| **Normal** | `<Leader>ca` | See available code actions          |
| **Normal** | `<Leader>rn` | Smart rename symbol                 |
| **Normal** | `<Leader>D`  | Show buffer diagnostics             |
| **Normal** | `<Leader>d`  | Show line diagnostics               |
| **Normal** | `<Leader>rs` | Restart LSP server                  |
| **Normal** | `<Leader>mp` | Format file (via Prettier/Pint/etc) |

## Navigation (Flash)

| Mode       | Key | Action                                       |
| :--------- | :-- | :------------------------------------------- |
| **Normal** | `s` | Flash Jump (Jump to any character on screen) |

## GitHub Copilot

| Mode       | Key             | Action              |
| :--------- | :-------------- | :------------------ |
| **Insert** | `<M-l>` (Alt+l) | Accept Suggestion   |
| **Insert** | `<M-]>` (Alt+]) | Next Suggestion     |
| **Insert** | `<M-[>` (Alt+[) | Previous Suggestion |
| **Insert** | `<C-]>`         | Dismiss Suggestion  |
