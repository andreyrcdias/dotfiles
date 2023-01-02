require("arcd")

require("vscode").setup({
    transparent = true,
    disable_nvimtree_bg = true,
})

require("gitsigns").setup()

require("lualine").setup{
    options = {
        icons_enabled = false,
    }
}

require("indent_blankline").setup()

