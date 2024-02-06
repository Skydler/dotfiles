local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "vim",
    "json",
    "http",
    "make",
    "yaml",
    "toml",
    "markdown",
    "dockerfile",
    "bash",
    "python",
    "javascript",
    "html",
    "css",
  },
  autotag = {
    enable = true,
  },
}

M.nvimtree = {
  on_attach = function(bufnr)
    local api = require("nvim-tree.api")
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.del("n", "<C-e>", { buffer = bufnr })
  end,
  update_focused_file = {
    enable = false,
  },
  git = {
    enable = true,
    ignore = false,
  },
  filesystem_watchers = {
    enable = true,
  },
  view = {
    adaptive_size = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
    add_trailing = true,
    indent_markers = {
      enable = true,
    },
  },
  filters = {
    custom = {
      "^.git$",
    },
  },
}

M.cmp = {
  sources = {
    { name = "nvim_lsp" },
    { name = "copilot" },
    { name = "luasnip" },
    { name = "buffer",  keyword_length = 4 },
    { name = "nvim_lua" },
    { name = "path" },
  },
}

M.nvterm = {
  terminals = {
    type_opts = {
      float = {
        relative = "editor",
        row = 0.1,
        col = 0.1,
        width = 0.8,
        height = 0.7,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.4 },
    },
  },
}

M.mason = {
  ensure_installed = {
    -- Lua
    "lua-language-server",
    "stylua",

    -- Web
    "typescript-language-server",
    "css-lsp",
    "html-lsp",
    "prettierd",

    -- Python
    "pyright",
    "black",
    "flake8",

    -- Additionals
    "bash-language-server",
    "terraform-ls",
    "yaml-language-server",
    "hadolint",
  },
}

M.telescope = {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--fixed-strings",
    },
  },

  extensions_list = { "themes", "terms", "fzf" },
}

return M
