local status, material = pcall(require, 'material')
if (not status) then return end

material.setup({
  styles = {
    comments = { italic = false }
  },
  disable = {
    background = false,
    term_colors = false,
  }
})

vim.cmd 'colorscheme material'
vim.g.material_style = "darker"

vim.keymap.set('n', '<leader>t', require('material.functions').find_style, {})

