local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"ellisonleao/gruvbox.nvim",
		"windwp/nvim-autopairs",
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

    "github/copilot.vim",

	"honza/vim-snippets",
	"eriks47/generate.nvim",
	"chentoast/marks.nvim",
	"lewis6991/gitsigns.nvim",
	-- "morhetz/gruvbox",
	"nvim-treesitter/playground",
	"sudoerwx/vim-ray-so-beautiful",

	{ "neoclide/coc.nvim", branch = "release" },
	"lervag/vimtex",
	"numToStr/FTerm.nvim",
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "iamcco/markdown-preview.nvim", build = "cd app && yarn install" },

	"goolord/alpha-nvim",
	"kyazdani42/nvim-web-devicons",
	"kyazdani42/nvim-tree.lua",
	"nvim-lualine/lualine.nvim",

	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"fannheyward/telescope-coc.nvim",
	"jremmen/vim-ripgrep",
	"akinsho/bufferline.nvim",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },
	-- {"generate.nvim", dir="/home/erik/playground/neoassist/generate.nvim"}
})
