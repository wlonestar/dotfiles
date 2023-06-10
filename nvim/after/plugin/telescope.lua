local status, builtin = pcall(require, 'telescope.builtin')
if (not status) then return end

require('telescope').setup({
  defaults = {
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },
  }
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- require ripgrep
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

