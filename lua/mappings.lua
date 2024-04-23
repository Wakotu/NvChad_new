require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>ww", ":wqa<cr>", { desc = "save and quit all" })

-- buffer, window, and tab
map("n", "H", ":bp<cr>", { desc = "Go to previous buffer" })
map("n", "L", ":bn<cr>", { desc = "Go to next buffer" })

-- tmux navigation
local nvim_tmux_nav = require "nvim-tmux-navigation"
map("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
map("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
map("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
map("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("i", "kk", "<ESC>", { desc = "exit insert mode" })

-- editing keymappings
local ls = require "luasnip"
map({ "i", "s" }, "<M-j>", function()
  ls.jump(1)
end, { silent = true })
map({ "i", "s" }, "<M-k>", function()
  ls.jump(-1)
end, { silent = true })
map({ "i", "s" }, "<M-l>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })

-- editor mappings: diagnostic linting formatting, etc.
map("n", "<leader>df", function()
  vim.diagnostic.open_float()
end, { desc = "Show diagnostics in a floating window" })

local nomap = vim.keymap.del

nomap("n", "<S-Tab>")
nomap("n", "<Tab>")
