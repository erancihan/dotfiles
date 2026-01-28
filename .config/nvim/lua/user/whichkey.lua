local key_ok, which_key = pcall(require, "which-key")
if not key_ok then
	return
end

which_key.setup({
	preset = "modern",
	plugins = {
		marks = true,
		registers = true,
		spelling = {
			enabled = true,
			suggestions = 20,
		},
		presets = {
			operators = false,
			motions = true,
			text_objects = true,
			windows = true,
			nav = true,
			z = true,
			g = true,
		},
	},
	win = {
		border = "rounded",
		-- position = "bottom", -- removed in v3, handled by layout/preset
		padding = { 2, 2, 2, 2 },
	},

	show_help = true,
	triggers = {
		{ "<auto>", mode = "nixsotc" },
	},
})

which_key.add({
	{ "<leader>b", "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>", desc = "Buffers" },
	{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
	{ "<leader>w", "<cmd>w!<CR>", desc = "Save" },
	{ "<leader>q", "<cmd>q!<CR>", desc = "Quit" },
	{ "<leader>c", "<cmd>Bdelete!<CR>", desc = "Close Buffer" },
	{ "<leader>h", "<cmd>nohlsearch<CR>", desc = "No Highlight" },
	{
		"<leader>f",
		"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
		desc = "Find files",
	},
	{ "<leader>F", "<cmd>Telescope live_grep theme=ivy<cr>", desc = "Find Text" },

	-- Lazy (replaced Packer)
	{ "<leader>p", group = "Lazy" },
	{ "<leader>pc", "<cmd>checkhealth<cr>", desc = "Checkhealth" },
	{ "<leader>pi", "<cmd>Lazy install<cr>", desc = "Install" },
	{ "<leader>ps", "<cmd>Lazy sync<cr>", desc = "Sync" },
	{ "<leader>pS", "<cmd>Lazy home<cr>", desc = "Status" },
	{ "<leader>pu", "<cmd>Lazy update<cr>", desc = "Update" },

	-- Git
	{ "<leader>g", group = "Git" },
	{ "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", desc = "Lazygit" },
	{ "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", desc = "Next Hunk" },
	{ "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", desc = "Prev Hunk" },
	{ "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", desc = "Blame" },
	{ "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", desc = "Preview Hunk" },
	{ "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", desc = "Reset Hunk" },
	{ "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", desc = "Reset Buffer" },
	{ "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", desc = "Stage Hunk" },
	{ "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc = "Undo Stage Hunk" },
	{ "<leader>go", "<cmd>Telescope git_status<cr>", desc = "Open changed file" },
	{ "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
	{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Checkout commit" },
	{ "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", desc = "Diff" },

	-- LSP
	{ "<leader>l", group = "LSP" },
	{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
	{ "<leader>ld", "<cmd>Telescope lsp_document_diagnostics<cr>", desc = "Document Diagnostics" },
	{ "<leader>lw", "<cmd>Telescope lsp_workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
	{ "<leader>lf", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", desc = "Format" },
	{ "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
	{ "<leader>lI", "<cmd>LspInstallInfo<cr>", desc = "Installer Info" },
	{ "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<CR>", desc = "Next Diagnostic" },
	{ "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic" },
	{ "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
	{ "<leader>lq", "<cmd>lua vim.diagnostic.set_loclist()<cr>", desc = "Quickfix" },
	{ "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
	{ "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
	{ "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },

	-- Search
	{ "<leader>s", group = "Search" },
	{ "<leader>sb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
	{ "<leader>sc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
	{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
	{ "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
	{ "<leader>sr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
	{ "<leader>sR", "<cmd>Telescope registers<cr>", desc = "Registers" },
	{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
	{ "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
})
