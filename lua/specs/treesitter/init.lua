local M = {'nvim-treesitter/nvim-treesitter'}

M.requires = {
  require('specs.treesitter.textobjects')
}

M.config = function()
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      'go',
      'typescript',
      'javascript',
      'tsx',
      'python',
      'bash',
      'hcl',
      'html',
      'css',
      'scss',
      'vue',
      'lua',
      'json',
      'yaml',
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
  })
end

M.run = ':TSUpdate'

return M