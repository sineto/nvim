local M = {'nvim-treesitter/nvim-treesitter'}

M.requires = {
  require('specs.treesitter.hlargs'),
  {'nvim-treesitter/nvim-treesitter-textobjects'},
  {'RRethy/nvim-treesitter-endwise'},
  {'JoosepAlviste/nvim-ts-context-commentstring'},
}

M.config = function()
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      -- main languages
      'go',
      'typescript',
      'javascript',
      'tsx',
      'hcl',
      'terraform',

      -- support languages
      'gomod',
      'html',
      'css',
      'scss',
      'bash',
      'python',
      'json',
      'yaml',
      'lua',
    },
    highlight = {
      enable = true,
      use_languagetree = true,
      additional_vim_regex_highlighting = false
    },
    indent = {
      enable = true,
    },

    -- Plugins
    -- JoosepAlviste/nvim-ts-context-commentstring
    context_commentstring = {
        enable = true,
    },
    autotag = {
        enable = true,
    },

    -- nvim-treesitter-textobjects
    textobjects = {
      select = {
        enable = true,

        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,

        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
    },

    -- RRethy/nvim-treesitter-endwise
    endwise = {
      enable = true,
    },
  })
end

M.run = ':TSUpdate'

return M