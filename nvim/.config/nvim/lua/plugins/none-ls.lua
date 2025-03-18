return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    -- Define formatting and diagnostics sources
    local formatting = null_ls.builtins.formatting
    --local diagnostics = null_ls.builtins.diagnostics

    null_ls.setup({
      sources = {
        -- General--
        require("none-ls.diagnostics.eslint_d"),
        formatting.prettier,

        -- Lua --
        formatting.stylua,

        -- C --

        -- C++ --

        -- Python --
        formatting.black,
        formatting.isort,

        -- Rust --

        -- Zig --

        -- Elixir --
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
