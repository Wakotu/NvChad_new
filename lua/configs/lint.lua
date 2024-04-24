require("lint").linters_by_ft = {
  markdown = { "vale" },
  c = { "cpplint" },
  cpp = { "cpplint" },
  lua = { "luacheck" },
  sh = { "shellcheck" },
  python = { "mypy" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
    require("lint").try_lint "cspell"
  end,
})
