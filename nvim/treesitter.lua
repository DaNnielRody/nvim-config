return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate'
    },
    {
        "windwp/nvim-ts-autotag",
        enabled = true,
        ft = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte" },
        config = function()
            require("nvim-ts-autotag").setup({
                opts = {
                    enable_close = true,           -- Auto-close tags
                    enable_rename = true,          -- Auto-rename pairs
                    enable_close_on_slash = false, -- Disable auto-close on trailing `</`
                },
                per_filetype = {
                    ["html"] = {
                        enable_close = true, -- Disable auto-closing for HTML
                    },
                    ["typescriptreact"] = {
                        enable_close = true, -- Explicitly enable auto-closing (optional, defaults to `true`)
                    },
                },
            })
        end,
    },
}
