local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("neoclide/coc.nvim", { branch = "release" })
Plug("lervag/vimtex")

vim.call("plug#end")

