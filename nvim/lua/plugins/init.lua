return {
	"nvim-lua/plenary.nvim", --lua functions that many plugins use
	"christoomey/vim-tmux-navigator", -- tmux & split window nav
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                {
                    path = "${3rd}/plenary.nvim/lua",
                    words = { "plenary" }
                },
            },
        },
    }

}
