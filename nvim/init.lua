local Plug = vim.fn['plug#']

vim.call('plug#begin')

   Plug "nvim-lualine/lualine.nvim"
   Plug "windwp/nvim-autopairs"
   Plug "neovimhaskell/haskell-vim"
   vim.cmd "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}"
   
   Plug "folke/tokyonight.nvim"

vim.call('plug#end')

--[[ STATUS LINE ]]
require('lualine').setup()

--[[ AUTO CLOSE BRACKETS ]]
require('nvim-autopairs').setup()

--[[ HASKELL ]]
vim.cmd([[
   filetype plugin indent on
   syntax on
   let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
   let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
   let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
   let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
   let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
   let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
   let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
]])

--[[ TAB ]]
vim.opt.tabstop                  = 3
vim.opt.shiftwidth               = 3
vim.opt.softtabstop              = 3
vim.opt.expandtab                = true
-- vim.opt.smartindent              = true


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

vim.g.rust_recommended_style     = false -- ALLOW 3-WIDE TAB ON RUST

vim.cmd([[
   set background=dark
   colorscheme tokyonight
   hi Normal guibg=NONE ctermbg=NONE "no background (opacity)
   hi EndOfBuffer guibg=NONE ctermbg=NONE "no background (opacity)
   hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan "change colour of visual block
   hi Search cterm=none ctermbg=darkgrey "change colour of search highlights
]]) -- COLORSCHEME + TRANSPARENCY

vim.opt.mouse = ""


--[[ THIS IS COPIED FROM THE TREESITTER GITHUB --[[ EXCEPT WITH HASKELL ADDED AND SOME LINES COMMENTED]]

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "haskell", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  -- sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  -- auto_install = true,

  -- List of parsers to ignore installing (or "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
