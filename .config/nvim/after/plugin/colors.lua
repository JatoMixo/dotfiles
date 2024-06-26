require("onedark").setup {
    style = "deep",
}

require("rose-pine").setup({
    variant = "main", -- NOTE: Dark variants: main, moon
})

function ColorPencils(color)
    DEFAULT_THEME = "onedark"

	color = color or DEFAULT_THEME
	vim.cmd.colorscheme(color)

    local TRANSPARENT_GROUPS = {
        "Normal",
        "NormalFloat",
        "EndOfBuffer",
        "SignColumn",
        "NvimTreeNormal",
        "NvimTreeEndOfBuffer",
        "FloatBorder",
    }

    for _, group in pairs(TRANSPARENT_GROUPS) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end

ColorPencils()
