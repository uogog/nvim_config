return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
}
--[[return {
    "taigrr/cyberpunk.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = false, -- set true for transparent background
        italic_comments = false, -- italicize comments
        italic_keywords = false, -- italicize keywords
        bold_functions = false, -- bold function names
        bold_keywords = true, -- bold keywords (default)
        overrides = {}, -- override specific highlight groups
    },
}]]
--
