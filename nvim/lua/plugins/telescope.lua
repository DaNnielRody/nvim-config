return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        "nvim-tree/nvim-web-devicons",
        "andrew-george/telescope-themes",
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')
        local builtin = require('telescope.builtin')

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                    },
                },
            },
            extensions = {
                themes = {
                    enable_previewer = true,
                    enable_live_preview = true,
                    persist = {
                        enabled = true,
                        path = vim.fn.stdpath("config") .. "/lua/colors.lua",
                    },
                },
            },
        })

        -- using others searchs, but they're optional
        --      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        --      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, { desc = "Find Connected Words under cursor" })

        vim.keymap.set("n", "<leader>ths", "<cmd>Telescope themes<CR>", { noremap = true, silent = true, desc = "Theme Switcher" })
    end
}
