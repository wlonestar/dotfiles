local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>f', function()
    vim.lsp.buf.format { async = true }
  end, bufopts)
end

local lsp_flags = {
  debounce_text_changes = 150,
}

nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
  single_file_support = { true }
}

nvim_lsp.bashls.setup {
  cmd = { "bash-language-server", "start" },
  on_attach = on_attach,
  filetypes = { "sh" },
  single_file_support = true
}

nvim_lsp.clangd.setup {
  on_attach = on_attach,
  cmd = { "clangd" },
  filetypes = { "c", "cpp" },
  single_file_support = { true }
}

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  filetypes = { "python" },
  settings = { {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      }
    }
  } },
  single_file_support = true
}

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { 
    "javascript", 
    "javascriptreact", 
    "javascript.jsx", 
    "typescript", 
    "typescriptreact", 
    "typescript.tsx" 
  },
  init_options = { hostInfo = "neovim" },
  single_file_support = true
}

nvim_lsp.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = {
    textDocument = {
      completion = {
        completionItem = {
          commitCharactersSupport = false,
          deprecatedSupport = false,
          documentationFormat = { "markdown", "plaintext" },
          preselectSupport = false,
          snippetSupport = false
        },
        contextSupport = false,
        dynamicRegistration = false
      },
    },
    workspace = {
      applyEdit = true,
      configuration = true,
      workspaceFolders = false
    }
  },
  filetypes = { "rust" },
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true
      }
    }
  },
  single_file_support = true
}

