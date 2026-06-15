vim.keymap.set({'n', 'v'}, 'j', 'h', { desc = 'Move left' })
vim.keymap.set({'n', 'v'}, 'k', 'j', { desc = 'Move down' })
vim.keymap.set({'n', 'v'}, 'l', 'k', { desc = 'Move up' })
vim.keymap.set({'n', 'v'}, 'ö', 'l', { desc = 'Move right' })

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('sainnhe/gruvbox-material')
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')

vim.call('plug#end')

home=os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require "common"
require "theme"
require "vimtree"
