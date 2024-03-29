local remap = vim.api.nvim_set_keymap

remap('', '<Space>', '<Nop>', { noremap = true, silent = true, desc = 'Leader key nop'})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--------------------------------------------------------------------
--  _   _                            _   __  __           _       -- 
-- | \ | | ___  _ __ _ __ ___   __ _| | |  \/  | ___   __| | ___  -- 
-- |  \| |/ _ \| '__| '_ ` _ \ / _` | | | |\/| |/ _ \ / _` |/ _ \ -- 
-- | |\  | (_) | |  | | | | | | (_| | | | |  | | (_) | (_| |  __/ -- 
-- |_| \_|\___/|_|  |_| |_| |_|\__,_|_| |_|  |_|\___/ \__,_|\___| -- 
--                                                                --   
--------------------------------------------------------------------

--find and replace
remap("n", "<leader>sr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { noremap = true, silent = true, desc= '[S]earch and [R]eplace'})

-- Let's us navigate panes using ctrl+vim movement
remap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Move to left pane'})
remap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Move to lower pane'})
remap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Move to upper pane'})
remap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Move to right pane'})
remap('n', ':terminal', '<leader>t', { noremap = true, silent = true, desc = 'Open terminal'})

-- remap('n', '<leader>e', ':Lexplore 30<cr>', { noremap = true, silent = true })

-- Resize panes remap
remap('n', '<leader>j', ':resize -3<CR>', { noremap = true, silent = true, desc = 'resize window 3 lines down' })
remap('n', '<leader>k', ':resize +3<CR>', { noremap = true, silent = true, desc = 'resize window 3 lines up'   })
remap('n', '<leader>h', ':vertical resize -3<CR>', { noremap = true, silent = true, desc = 'resize window 3 lines left'    })
remap('n', '<leader>l', ':vertical resize +3<CR>', { noremap = true, silent = true, desc = 'resize window 3 lines right'    })


-- Move panes around remap
remap('n', '<leader>wl', '<C-w>L', { noremap = true, silent = true, desc = 'Move window RIGHT' })
remap('n', '<leader>wh', '<C-w>H', { noremap = true, silent = true, desc = 'Move window LEFT' })
remap('n', '<leader>wj', '<C-w>J', { noremap = true, silent = true, desc = 'Move window DOWN' })
remap('n', '<leader>wk', '<C-w>K', { noremap = true, silent = true, desc = 'move window UP' })

-- Navigate buffers
remap('n', '<S-l>', ':bnext<CR>', { noremap = true, silent = true, desc = 'Move to next Buffer' })
remap('n', '<S-h>', ':bprevious<CR>', { noremap = true, silent = true, desc = 'Move to previous Buffer' })

-- Markdown Preview
remap('n', '<leader>md', '<Plug>MarkdownPreview', { noremap = true, silent = true, desc = '[M]ark[D]own preview' })
remap('n', '<leader>mds', '<Plug>MarkdownPreviewStop', { noremap = true, silent = true, desc = '[M]ark[D]own preview [S]top' })
remap('n', '<leader>mdt', '<Plug>MarkdownPreviewToggle', { noremap = true, silent = true, desc = '[M]ark[D]own preview [T]oggle' })

-- Markdown Preview
remap('n', '<leader>bd', ':bdelete<cr>', { noremap = true, silent = true, desc = '[B]uffer [D]elete' })

-- Lazy plugin manager
remap('n', '<leader>p', ':Lazy<cr>', { noremap = true, silent = true, desc = 'Lazy loader' })

-- Vim Tmux Navigation
-- remap('n', '<silent> <C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>', opts)
-- remap('n', '<silent> <C-j>', '<Cmd>NvimTmuxNavigateDown<CR>', opts)
-- remap('n', '<silent> <C-k>', '<Cmd>NvimTmuxNavigateUp<CR>', opts)
-- remap('n', '<silent> <C-l>', '<Cmd>NvimTmuxNavigateRight<CR>', opts)

-- Movment remaps to deal with wordwrap
remap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = 'Fixes word wrapping for k'})
remap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = 'Fixes word wrapping for j'})

-- Git 
remap('n', '<leader>gs', ':Neotree git_status<CR>', { noremap = true, silent = true, desc = 'Neotree [G]it [S]tatus' })

--------------------------------------------------------------------
--      ___                     _     __  __           _          --
--     |_ _|_ __  ___  ___ _ __| |_  |  \/  | ___   __| | ___     --
--      | || '_ \/ __|/ _ \ '__| __| | |\/| |/ _ \ / _` |/ _ \    --
--      | || | | \__ \  __/ |  | |_  | |  | | (_) | (_| |  __/    --
--     |___|_| |_|___/\___|_|   \__| |_|  |_|\___/ \__,_|\___|    --
--                                                                --
--------------------------------------------------------------------

-- Press jk fast to exit insert mode 
-- remap('i', 'jk', '<ESC>', { noremap = true, silent = true, desc = 'jk for extra fast insert mode exit' })
remap('i', 'kj', '<ESC>', { noremap = true, silent = true, desc = 'kj for extra fast insert mode exit' })

--------------------------------------------------------------------
--      __     ___                 _   __  __           _         --
--      \ \   / (_)___ _   _  __ _| | |  \/  | ___   __| | ___    --
--       \ \ / /| / __| | | |/ _` | | | |\/| |/ _ \ / _` |/ _ \   --
--        \ V / | \__ \ |_| | (_| | | | |  | | (_) | (_| |  __/   --
--         \_/  |_|___/\__,_|\__,_|_| |_|  |_|\___/ \__,_|\___|   --
--                                                                --
--------------------------------------------------------------------
--
-- Stay in indent mode
remap('v', '<', '<gv', { noremap = true, silent = true, desc = 'Stay in visual mode after indenting with <' })
remap('v', '>', '>gv', { noremap = true, silent = true, desc = 'Stay in visual mode after indenting with >' })

-- Move text up and down
remap('v', 'p', '\'_dP', { noremap = true, silent = true, desc = 'Move text up and down' })

-- Visual Block
-- Move text up and down
remap('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true, desc = 'Move text up in using J in visual mode' })
remap('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true, desc = 'Move text down in using K in visual mode' })
