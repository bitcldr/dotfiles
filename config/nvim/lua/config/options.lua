-- ================================================================================================
-- TITLE: NeoVim options
-- ABOUT:
--    Options are automatically loaded before lazy.nvim startup
--    Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- ================================================================================================

-- Basic Settings
vim.opt.number = true         -- Line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.cursorline = true     -- Highlight current line
vim.opt.scrolloff = 10        -- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8     -- Keep 8 columns left/right of cursor
vim.opt.wrap = false          -- Don't wrap lines
vim.opt.cmdheight = 1         -- Command line height
vim.opt.spelllang = { "en" }  -- Set language for spellchecking

-- Tabbing / Indentation
vim.opt.tabstop = 2                -- Tab width
vim.opt.shiftwidth = 2             -- Indent width
vim.opt.softtabstop = 2            -- Soft tab stop
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.smartindent = true         -- Smart auto-indenting
vim.opt.autoindent = true          -- Copy indent from current line
vim.opt.grepprg = "rg --vimgrep"   -- Use ripgrep if available
vim.opt.grepformat = "%f:%l:%c:%m" -- filename, line number, column, content

-- Search Settings
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.smartcase = true  -- Case-sensitive if uppercase in search
vim.opt.hlsearch = false  -- Don't highlight search results
vim.opt.incsearch = true  -- Show matches as you type

-- Visual Settings
vim.opt.termguicolors = true                      -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                        -- Always show sign column
vim.opt.colorcolumn = "100"                       -- Show column at 100 characters
vim.opt.showmatch = true                          -- Highlight matching brackets
vim.opt.matchtime = 2                             -- How long to show matching bracket
vim.opt.completeopt = "menuone,noinsert,noselect" -- Completion options
vim.opt.showmode = false                          -- Don't show mode in command line
vim.opt.pumheight = 10                            -- Popup menu height
vim.opt.pumblend = 10                             -- Popup menu transparency
vim.opt.winblend = 0                              -- Floating window transparency
vim.opt.conceallevel = 2                          -- Obsidian requirement
vim.opt.concealcursor = ""                        -- Show markup even on cursor line
vim.opt.redrawtime = 10000                        -- Timeout for syntax highlighting redraw
vim.opt.maxmempattern = 20000                     -- Max memory for pattern matching
vim.opt.synmaxcol = 300                           -- Syntax highlighting column limit

-- File Handling
vim.opt.backup = false                       -- Don't create backup files
vim.opt.writebackup = false                  -- Don't backup before overwriting
vim.opt.swapfile = false                     -- Don't create swap files
vim.opt.undofile = true                      -- Persistent undo
vim.opt.updatetime = 300                     -- Time in ms to trigger CursorHold
vim.opt.timeoutlen = 500                     -- Time in ms to wait for mapped sequence
vim.opt.ttimeoutlen = 0                      -- No wait for key code sequences
vim.opt.autoread = true                      -- Auto-reload file if changed outside
vim.opt.autowrite = false                    -- Don't auto-save on some events
vim.opt.diffopt:append("vertical")           -- Vertical diff splits
vim.opt.diffopt:append("algorithm:patience") -- Better diff algorithm
vim.opt.diffopt:append("linematch:60")       -- Better diff highlighting (smart line matching)

-- Set undo directory and ensure it exists
local undodir = "~/.local/share/nvim/undodir" -- Undo directory path
vim.opt.undodir = vim.fn.expand(undodir)      -- Expand to full path
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
  vim.fn.mkdir(undodir_path, "p") -- Create if not exists
end

-- Behavior Settings
vim.opt.errorbells = false              -- Disable error sounds
vim.opt.backspace = "indent,eol,start"  -- Make backspace behave naturally
vim.opt.autochdir = false               -- Don't change directory automatically
vim.opt.iskeyword:append("-")           -- Treat dash as part of a word
vim.opt.path:append("**")               -- Search into subfolders with `gf`
vim.opt.selection = "inclusive"         -- Use inclusive selection
vim.opt.mouse = "a"                     -- Enable mouse support
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
vim.opt.modifiable = true               -- Allow editing buffers
vim.opt.encoding = "UTF-8"              -- Use UTF-8 encoding
vim.opt.wildmenu = true                 -- Enable command-line completion menu
vim.opt.wildmode = "longest:full,full"  -- Completion mode for command-line
vim.opt.wildignorecase = true           -- Case-insensitive tab completion in commands

-- Cursor Settings
vim.opt.guicursor = {
  "n-v-c:block",                                          -- Normal, Visual, Command-line
  "i-ci-ve:block",                                        -- insert, command-line insert, visual-exclusive
  "r-cr:hor20",                                           -- replace, command-line replace
  "o:hor50",                                              -- operator-pending
  "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor", -- All modes: blinking & highlight groups
  "sm:block-blinkwait175-blinkoff150-blinkon175",         -- Showmatch mode
}

-- Folding Settings
vim.opt.foldmethod = "expr"                          -- Use expression for folding
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Use treesitter for folding
vim.opt.foldlevel = 99                               -- Keep all folds open by default

-- Split Behavior
vim.opt.splitbelow = true -- Horizontal splits open below
vim.opt.splitright = true -- Vertical splits open to the right
-----------------------------------------------------------------------------------------------


vim.opt.title = true
vim.opt.autoindent = true
-- vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
-- vim.opt.expandtab = true
-- vim.opt.scrolloff = 10
vim.opt.shell = "fish"
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
-- vim.opt.shiftwidth = 2
-- vim.opt.tabstop = 2
-- vim.opt.wrap = false          -- No Wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
-- vim.opt.splitbelow = true     -- Put new windows below current
-- vim.opt.splitright = true     -- Put new windows right of current
vim.opt.splitkeep = "cursor"
-- vim.opt.mouse = "a"

-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })
