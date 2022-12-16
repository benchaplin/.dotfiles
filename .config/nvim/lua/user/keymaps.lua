local function keymap(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c"

keymap("i", "kj", "<c-c>")

keymap("t", "kj", "<c-\\><c-n>")
keymap("n", "<leader>t", ":terminal<cr>")

keymap("n", "<leader>w", ":w!<cr>")
keymap("n", "<leader>q", ":q!<cr>")

keymap("n", "<leader>o", "o<c-c>")
keymap("n", "<leader><s-o>", "<s-o><c-c>")

keymap("n", "<leader>v", "<c-w>v<cr>")
keymap("n", "<leader>s", "<c-w>s<cr>")
keymap("n", "<leader>l", "<c-w>l<cr>")
keymap("n", "<leader>h", "<c-w>h<cr>")
keymap("n", "<leader>k", "<c-w>k<cr>")
keymap("n", "<leader>j", "<c-w>j<cr>")

keymap("n", "<leader>rs=", "vertical resize +10<cr>")
keymap("n", "<leader>rs-", "vertical resize -10<cr>")
keymap("n", "<leader>rs4", "vertical resize 40<cr>")
keymap("n", "<leader>rsh", "vertical resize 110<cr>")
keymap("n", "<leader>hrs=", "resize +5<cr>")
keymap("n", "<leader>hrs-", "resize -5<cr>")

keymap("n", "<leader>e", ":Ex<cr>")
keymap("n", "<leader>pv", "<c-w>v<bar><c-w>h<bar>:Ex<bar>:vertical resize 40<cr>")

-- Coc maps
vim.cmd([[
    inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
]])
