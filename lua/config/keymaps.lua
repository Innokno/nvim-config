vim.g.mapleader = " "
local map = vim.keymap.set

-- Keymap for opening Oil.nvim
map("n", "<leader>o", ":Oil<CR>")

-- Better navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("i", "jj", "<Esc>")

map("n", "<leader>hs", ":split<CR>")
map("n", "<leader>vs", ":vsplit<CR>")

-- File actions
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":q!<CR>")

-- Vim Diagnostics
map("n", "<leader>e", vim.diagnostic.open_float)         -- Show diagnostics in a floating window
map("n", "[d", vim.diagnostic.goto_prev)                 -- Go to previous diagnostic
map("n", "]d", vim.diagnostic.goto_next)                 -- Go to next diagnostic
map("n", "<leader>lq", vim.diagnostic.setloclist)         -- Show all diagnostics in location list

-- Vim lsp buffers
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })

map("n", "gd", function ()
  vim.cmd[[vsplit]]
  vim.lsp.buf.definition()
end, { desc = "Go to Definition" })

map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
map("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to Type Definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "Show References" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
