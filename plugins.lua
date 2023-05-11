local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Lua 
        "lua-language-server",
        "stylua",
        -- Web dev
        "prettier",
        "vue-language-server",
        "typescript-language-server",
        "emmet-ls",
        "eslint_d",
        "eslint-lsp",
        "html-lsp",
        "css-lsp",
        "unocss-language-server",
        -- Content
        "marksman",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "vue",
        "tsx",
        "go",
        "dockerfile",
        "markdown",
        "yaml",
        "toml",
        "sql"
      },
    },
  },
}
return plugins
