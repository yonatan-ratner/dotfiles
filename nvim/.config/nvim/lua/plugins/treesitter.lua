return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua", "query",
        "vim", "vimdoc",
        "c", "cpp",
        "python",
        "zig",
        "rust",
        "elixir", "heex",
        "javascript", "html", "css",
      },
      -- auto install in addition to ensured options.
      auto_install = true,
      -- disable synchronous install 
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}


