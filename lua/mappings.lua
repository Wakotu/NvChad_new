require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>ww", ":wqa<cr>", {desc = "save and quit all"})

-- buffer, window, and tab
map("n", "H", ":bp<cr>", {desc = "Go to previous buffer"})
map("n", "H", ":bn<cr>", {desc = "Go to next buffer"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("i", "kk", "<ESC>", { desc = "exit insert mode"})


local nomap = vim.keymap.del

nomap("n", "<S-Tab>")
nomap("n", "<Tab>")
