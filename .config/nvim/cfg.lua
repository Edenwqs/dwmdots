local Plug = vim.fn['plug#']

vim.call('plug#begin')

   Plug "nvim-lualine/lualine.nvim"
   Plug "windwp/nvim-autopairs"
   
   Plug "folke/tokyonight.nvim"

vim.call('plug#end')




--[[ STATUS LINE ]]
require('lualine').setup()

--[[ AUTO CLOSE BRACKETS ]]
require('nvim-autopairs').setup()

--[[ TAB ]]
vim.opt.tabstop                  = 3
vim.opt.shiftwidth               = 3
vim.opt.softtabstop              = 3
vim.opt.expandtab                = true
vim.opt.smartindent              = true


--[[ CLIPBOARD ]]
vim.cmd([[
   noremap <Leader>Y "*y
   noremap <Leader>P "*p
   noremap <Leader>y "+y
   noremap <Leader>p "+p "clipboard
]])

--[[ LINE NUMBER]]
vim.opt.nu                       = true
vim.opt.rnu                      = true

--[[ LINE WRAPPING ]]
-- vim.opt.wrap                     = false
vim.opt.breakindent              = true
vim.opt.breakindentopt           = "shift:0,min:40,sbr"
vim.opt.showbreak                = ">"

vim.opt.fillchars = {eob = " "} -- CHAR ON START OF EMPTY LINE

vim.cmd([[
   set background=dark
   colorscheme tokyonight
   hi Normal guibg=NONE ctermbg=NONE "no background (opacity)
   hi EndOfBuffer guibg=NONE ctermbg=NONE "no background (opacity)
   hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan "change colour of visual block
   hi Search cterm=none ctermbg=darkgrey "change colour of search highlights
]]) -- COLORSCHEME + TRANSPARENCY

vim.opt.mouse = ""
