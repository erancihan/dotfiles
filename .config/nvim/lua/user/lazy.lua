local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
end

return lazy.setup({
	-- useful lua functions for telescope and other plugins
	{ "nvim-lua/plenary.nvim" },

	-- Treesitter for syntax highligt
	{ "nvim-treesitter/nvim-treesitter" },
	{ "nvim-treesitter/nvim-treesitter-context" },


	-- for auto closing quotes and bracket pairs.
	{ "windwp/nvim-autopairs" },

	-- for commenting and uncommenting blocks
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({})
		end,
	},

	-- Fancy icons for filebrowser.
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup()
		end,
	},
	{ "echasnovski/mini.icons" },

	-- File Browser
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				view = {
					width = 30,
					side = "left",
				},
			})
		end,
	},

	-- Comment strings for different languages
	{ "JoosepAlviste/nvim-ts-context-commentstring" },

	-- Theme
	{
		"tanvirtin/monokai.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local monokai = require("monokai")
			local palette = monokai.pro

			monokai.setup({
				palette = palette,
				custom_hlgroups = {
					Normal = {
						bg = "None",
					},
					CursorLine = {
						bg = "#211F22",
					},
					TSInclude = {
						fg = palette.aqua,
					},
					DiffAdd = {
						fg = palette.green,
						bg = palette.base2,
					},
					GitSignsAdd = {
						fg = palette.green,
						bg = palette.base2,
					},
					GitSignsDelete = {
						fg = palette.pink,
						bg = palette.base2,
					},
					GitSignsChange = {
						fg = palette.orange,
						bg = palette.base2,
					},
				},
			})

			vim.api.nvim_command("colorscheme monokai")
		end,
	},

	-- Tabs
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Obey .editorconfig files if exists
	{ "editorconfig/editorconfig-vim" },

	-- Plugin that helps display a popup with the list of shortcuts
	{ "folke/which-key.nvim" },

	-- Autocomplete
	{ "hrsh7th/nvim-cmp" }, -- The completion plugin
	{ "hrsh7th/cmp-buffer" }, -- buffer completions
	{ "hrsh7th/cmp-path" }, -- path completions
	{ "saadparwaiz1/cmp_luasnip" }, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },

	-- snippets
	{ "L3MON4D3/LuaSnip" }, -- snippet engine

	-- LSP
	{ "neovim/nvim-lspconfig" },
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
			"gbprod/none-ls-php.nvim",
		},
	},
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "lukas-reineke/lsp-format.nvim" },

	-- Telescope
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},

	-- Gitsigns
	{ "lewis6991/gitsigns.nvim" },

	-- Git Blame
	{ "f-person/git-blame.nvim" },

	-- Colorize
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({})
		end,
	},

	-- Discord Rich Presence
	{ "vimsence/vimsence" },

	-- Trouble
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	},

	-- TodoComments
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	},

	-- indent-blankline
	{ "lukas-reineke/indent-blankline.nvim" },

	-- Git Diff View
	{ "sindrets/diffview.nvim" },
})
