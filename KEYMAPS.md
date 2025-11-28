# Keymaps

Here is a comprehensive list of the keybindings configured in this Neovim setup. 
The **Leader key** is set to `<Space>`.

## 1. General & Windows

| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `<Esc>` | Clear search highlights | Normal | `lua/keymaps.lua` |
| `<leader>q` | Open diagnostic Quickfix list | Normal | `lua/keymaps.lua` |
| `<Esc><Esc>` | Exit terminal mode | Terminal | `lua/keymaps.lua` |
| `<C-h>` | Move focus to left window | Normal | `lua/keymaps.lua` |
| `<C-l>` | Move focus to right window | Normal | `lua/keymaps.lua` |
| `<C-j>` | Move focus to lower window | Normal | `lua/keymaps.lua` |
| `<C-k>` | Move focus to upper window | Normal | `lua/keymaps.lua` |
| `<left/right/up/down>` | Disabled (echoes message to use hjkl) | Normal | `lua/keymaps.lua` |

## 2. Navigation (File Explorer)

Managed by **Neo-tree**.

| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `<leader>e` | Toggle Explorer (Current Working Directory) | Normal | `lua/custom/plugins/neo-tree.lua` |
| `<leader>ge` | Toggle Git Explorer | Normal | `lua/custom/plugins/neo-tree.lua` |
| `<leader>be` | Toggle Buffer Explorer | Normal | `lua/custom/plugins/neo-tree.lua` |

## 3. Search (Telescope)

Managed by **Telescope**.

| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `<leader>sh` | [S]earch [H]elp | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>sk` | [S]earch [K]eymaps | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>sf` | [S]earch [F]iles | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>ss` | [S]earch [S]elect Telescope | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>sw` | [S]earch current [W]ord | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>sg` | [S]earch by [G]rep | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>sd` | [S]earch [D]iagnostics | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>sr` | [S]earch [R]esume | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>s.` | [S]earch Recent Files | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader><leader>` | Find existing buffers | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>/` | Fuzzily search in current buffer | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>s/` | Search in Open Files | Normal | `lua/custom/plugins/telescope.lua` |
| `<leader>sn` | Search Neovim configuration files | Normal | `lua/custom/plugins/telescope.lua` |

## 4. LSP & Diagnostics

Managed by **nvim-lspconfig**.

| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `gd` | [G]oto [D]efinition | Normal | `lua/custom/plugins/lspconfig.lua` |
| `gr` | [G]oto [R]eferences | Normal | `lua/custom/plugins/lspconfig.lua` |
| `gI` | [G]oto [I]mplementation | Normal | `lua/custom/plugins/lspconfig.lua` |
| `gD` | [G]oto [D]eclaration | Normal | `lua/custom/plugins/lspconfig.lua` |
| `<leader>D` | Type [D]efinition | Normal | `lua/custom/plugins/lspconfig.lua` |
| `<leader>ds` | [D]ocument [S]ymbols | Normal | `lua/custom/plugins/lspconfig.lua` |
| `<leader>ws` | [W]orkspace [S]ymbols | Normal | `lua/custom/plugins/lspconfig.lua` |
| `<leader>rn` | [R]e[n]ame | Normal | `lua/custom/plugins/lspconfig.lua` |
| `<leader>ca` | [C]ode [A]ction | Normal/Visual | `lua/custom/plugins/lspconfig.lua` |
| `<leader>th` | [T]oggle Inlay [H]ints | Normal | `lua/custom/plugins/lspconfig.lua` |

## 5. Coding & Editing

### Formatting
| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `<leader>f` | [F]ormat buffer | Normal | `lua/custom/plugins/conform.lua` |

### Autocompletion (nvim-cmp)
| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `<C-n>` | Select next completion item | Insert | `lua/custom/plugins/autocompletion.lua` |
| `<C-p>` | Select previous completion item | Insert | `lua/custom/plugins/autocompletion.lua` |
| `<C-y>` | Accept completion | Insert | `lua/custom/plugins/autocompletion.lua` |
| `<C-Space>` | Manually trigger completion | Insert | `lua/custom/plugins/autocompletion.lua` |
| `<C-b>` | Scroll docs back | Insert | `lua/custom/plugins/autocompletion.lua` |
| `<C-f>` | Scroll docs forward | Insert | `lua/custom/plugins/autocompletion.lua` |
| `<C-l>` | Snippet jump right | Insert/Select | `lua/custom/plugins/autocompletion.lua` |
| `<C-h>` | Snippet jump left | Insert/Select | `lua/custom/plugins/autocompletion.lua` |

### Folds
| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `<leader>zc` | [c]lose all folds | Normal | `lua/folds.lua` |
| `<leader>zo` | [o]pen all folds | Normal | `lua/folds.lua` |

### Surround (Mini.surround)
| Key Pattern | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `gsa` + object | [G]o [S]urround [A]dd (e.g. `gsaiw)`) | Normal | `lua/custom/plugins/mini.lua` |
| `gsd` + char | [G]o [S]urround [D]elete (e.g. `gsd'`) | Normal | `lua/custom/plugins/mini.lua` |
| `gsr` + from + to | [G]o [S]urround [R]eplace (e.g. `gsr)'`) | Normal | `lua/custom/plugins/mini.lua` |
| `gsf` / `gsF` | Find surrounding | Normal | `lua/custom/plugins/mini.lua` |
| `gsh` | Highlight surrounding | Normal | `lua/custom/plugins/mini.lua` |

### Text Objects (Mini.ai)
| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `a` + object | Select [A]round object (e.g. `va)`) | Visual/Operator | `lua/custom/plugins/mini.lua` |
| `i` + object | Select [I]nside object (e.g. `ci'`) | Visual/Operator | `lua/custom/plugins/mini.lua` |

## 6. Git

Managed by **Gitsigns**.

| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `]c` | Jump to next git change | Normal | `lua/custom/plugins/gitsigns.lua` |
| `[c` | Jump to previous git change | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hs` | Stage hunk | Normal/Visual | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hr` | Reset hunk | Normal/Visual | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hS` | Stage buffer | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hu` | Undo stage hunk | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hR` | Reset buffer | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hp` | Preview hunk | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hb` | Blame line | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hd` | Diff against index | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>hD` | Diff against last commit | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>tb` | [T]oggle git show [b]lame line | Normal | `lua/custom/plugins/gitsigns.lua` |
| `<leader>tD` | [T]oggle git show [D]eleted | Normal | `lua/custom/plugins/gitsigns.lua` |

## 7. Debug (DAP)

Managed by **nvim-dap**.

| Key | Description | Mode | Defined In |
| --- | --- | --- | --- |
| `<F5>` | Start/Continue | Normal | `lua/custom/plugins/debug.lua` |
| `<F1>` | Step Into | Normal | `lua/custom/plugins/debug.lua` |
| `<F2>` | Step Over | Normal | `lua/custom/plugins/debug.lua` |
| `<F3>` | Step Out | Normal | `lua/custom/plugins/debug.lua` |
| `<leader>db` | Toggle Breakpoint | Normal | `lua/custom/plugins/debug.lua` |
| `<leader>dB` | Set Breakpoint (Condition) | Normal | `lua/custom/plugins/debug.lua` |
| `<F7>` | See last session result | Normal | `lua/custom/plugins/debug.lua` |
