local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "c",
    "cpp",
    "rust",
    "python",
    "json",
    "markdown",
    "vim",
    "lua",
    "bash"
  },
  autotag = {
    enable = true
  }
}

