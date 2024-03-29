return {
  'alexghergh/nvim-tmux-navigation',
  config = function ()
    -- local nvim_tmux_nav = require('nvim-tmux-navigation')

    require('nvim-tmux-navigation').setup {
      disable_when_zoomed = true, -- defaults to false
      keybindings = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
        last_active = "<C-\\>",
        next = "<C-Space>",
      }

    }

    -- vim.keymap.set('n', '<C-h>', nvim_tmux_nav.NvimTmuxNavigateLeft)
    -- vim.keymap.set('n', '<C-j>', nvim_tmux_nav.NvimTmuxNavigateDown)
    -- vim.keymap.set('n', '<C-k>', nvim_tmux_nav.NvimTmuxNavigateUp)
    -- vim.keymap.set('n', '<C-l>', nvim_tmux_nav.NvimTmuxNavigateRight)
    -- vim.keymap.set('n', '<C-\\>', nvim_tmux_nav.NvimTmuxNavigateLastActive)
    -- vim.keymap.set('n', '<C-Space>', nvim_tmux_nav.NvimTmuxNavigateNext)
  end
}
