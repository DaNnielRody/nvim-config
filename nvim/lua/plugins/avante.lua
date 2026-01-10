return {
	"yetone/avante.nvim",

	build = vim.fn.has("win32") ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
		or "make",

	event = "VeryLazy",
	version = false, -- never use "*"

	---@module 'avante'
	---@type avante.Config
	opts = {
		instructions_file = "avante.md",

		provider = "openai",

		providers = {
			openai = {
				endpoint = "https://api.openai.com/v1",
				model = "gpt-4o-mini",
				timeout = 30000,
				extra_request_body = {
					temperature = 0.7,
					max_tokens = 4096,
				},
			},

			openrouter = {
				endpoint = "https://openrouter.ai/api/v1",
				model = "moonshotai/kimi-k2:free",
				timeout = 30000,
				extra_request_body = {
					temperature = 0.7,
					max_tokens = 16384,
				},
			},

			gemini = {
				endpoint = "https://generativelanguage.googleapis.com/v1beta",
				model = "gemini-1.5-pro",
				timeout = 30000,
				extra_request_body = {
					temperature = 0.7,
					max_output_tokens = 8192,
					top_p = 0.95,
				},
			},

			-- claude = {
			--   endpoint = "https://api.anthropic.com",
			--   model = "claude-sonnet-4-20250514",
			--   timeout = 30000,
			--   extra_request_body = {
			--     temperature = 0.75,
			--     max_tokens = 20480,
			--   },
			-- },
		},
	},

	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",

		"nvim-mini/mini.pick",
		"nvim-telescope/telescope.nvim",
		"hrsh7th/nvim-cmp",
		"ibhagwan/fzf-lua",
		"stevearc/dressing.nvim",
		"folke/snacks.nvim",
		"nvim-tree/nvim-web-devicons",
		"zbirenbaum/copilot.lua",

		{
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				default = {
					embed_image_as_base64 = false,
					prompt_for_file_name = false,
					drag_and_drop = {
						insert_mode = true,
					},
					use_absolute_path = true,
				},
			},
		},

		{
			"MeanderingProgrammer/render-markdown.nvim",
			ft = { "markdown", "Avante" },
			opts = {
				file_types = { "markdown", "Avante" },
			},
		},
	},
}
