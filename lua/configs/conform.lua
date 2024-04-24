local options = {
  formatters_by_ft = {
    ["*"] = { "injected" },
    ["_"] = { "trim_whitespace", "squeeze_blanks" },
    lua = { "stylua" },
    sh = { "shfmt" },
    css = { "prettier" },
    html = { "prettier" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    python = { "isort", "black" },
    markdown = { "markdownlint" },
  },

  ["format_on_save"] = function(bufnr)
    -- Disable autoformat on certain file types
    local ignore_filetypes = { "sql", "java" }
    if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
      return
    end

    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end

    -- Disable autoformat for files in a certain path
    local bufname = vim.api.nvim_buf_get_name(bufnr)
    if bufname:match "/target/" then
      return
    end

    return { timeout_ms = 500, lsp_fallback = true }
  end,
}

require("conform").setup(options)
