require("onedark").setup {
    style = "deep",
}

function ColorPencils(color)

    THEME = "onedark"

	color = color or THEME
	vim.cmd.colorscheme(color)

    TRANSPARENT_GROUPS = {
        "Normal",
        "NormalFloat",
        "EndOfBuffer",
        "SignColumn",
        "NvimTreeNormal",
        "NvimtreeEndOfBuffer",
    }

    for _, group in pairs(TRANSPARENT_GROUPS) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end

ColorPencils()
