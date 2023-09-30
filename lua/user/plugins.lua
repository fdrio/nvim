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
          's1n7ax/nvim-search-and-replace',
          config = function() require'nvim-search-and-replace'.setup() end,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreview" },
        ft = { "markdown" },
        build = "cd app && npm install",
    },
    {'ishan9299/modus-theme-vim'}, 
    {"mg979/vim-visual-multi"},
	{ "nvim-lua/plenary.nvim"}, -- Useful lua functions used by lots of plugins
	{ "windwp/nvim-autopairs"}, -- Autopairs, integrates with both cmp and treesitter
    { "kyazdani42/nvim-tree.lua"},
	{ "nvim-lualine/lualine.nvim" },
	{ "akinsho/toggleterm.nvim"},
	{ "ahmedkhalf/project.nvim"},
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}},
	"folke/which-key.nvim",

	-- Colorschemes
	"EdenEast/nightfox.nvim", 
  -- cmp plugins
	{ "hrsh7th/nvim-cmp"}, -- The completion plugin
	{ "hrsh7th/cmp-buffer"}, -- buffer completions
	{ "hrsh7th/cmp-path"}, -- path completions
	{ "saadparwaiz1/cmp_luasnip"}, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp"},
	{ "hrsh7th/cmp-nvim-lua"},
  -- Colorizer
    {"norcalli/nvim-colorizer.lua"},
	-- snippets
	{ "L3MON4D3/LuaSnip"}, --snippet engine
	{ "rafamadriz/friendly-snippets"}, -- a bunch of snippets to use

	-- LSP
	{ "neovim/nvim-lspconfig"}, -- enable LSP
	{ "williamboman/mason.nvim"}, 
    {"williamboman/mason-lspconfig.nvim" },

	-- Telescope
	{ "nvim-telescope/telescope.nvim"},

	-- Treesitter
    
	"nvim-treesitter/nvim-treesitter",
	{
    "nvim-treesitter/playground"
	},

  -- Tabs
    {'akinsho/bufferline.nvim'},
    {'nvim-tree/nvim-web-devicons'},
	-- Git
	{ "lewis6991/gitsigns.nvim" },
    {'tpope/vim-fugitive'},




})

--local fn = vim.fn
--
---- Automatically install packer
--local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
--if fn.empty(fn.glob(install_path)) > 0 then
--	PACKER_BOOTSTRAP = fn.system({
--		"git",
--		"clone",
--		"--depth",
--		"1",
--		"https://github.com/wbthomason/packer.nvim",
--		install_path,
--	})
--	print("Installing packer close and reopen Neovim...")
--	vim.cmd([[packadd packer.nvim]])
--end
--
---- Autocommand that reloads neovim whenever you save the plugins.lua file
--vim.cmd([[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins.lua source <afile> | PackerSync
--  augroup end
--]])
--
---- Use a protected call so we don't error out on first use
--local status_ok, packer = pcall(require, "packer")
--if not status_ok then
--	return
--end
--
---- Have packer use a popup window
--packer.init({
--	display = {
--		open_fn = function()
--			return require("packer.util").float({ border = "rounded" })
--		end,
--	},
--})
--
---- Install your plugins here
--return packer.startup(function(use)
--	-- My plugins here
--    use {
--          's1n7ax/nvim-search-and-replace',
--          config = function() require'nvim-search-and-replace'.setup() end,
--    }
--    use({"mg979/vim-visual-multi"})
--	use({ "wbthomason/packer.nvim"}) -- Have packer manage itself
--	use({ "nvim-lua/plenary.nvim"}) -- Useful lua functions used by lots of plugins
--	use({ "windwp/nvim-autopairs"}) -- Autopairs, integrates with both cmp and treesitter
--	use({ "kyazdani42/nvim-web-devicons"})
--    use({ "kyazdani42/nvim-tree.lua"})
--	use({ "nvim-lualine/lualine.nvim" })
--	use({ "akinsho/toggleterm.nvim"})
--	use({ "ahmedkhalf/project.nvim"})
--	use({ "lukas-reineke/indent-blankline.nvim"})
--	use("folke/which-key.nvim")
--
--	-- Colorschemes
--	use "EdenEast/nightfox.nvim" 
--  -- cmp plugins
--	use({ "hrsh7th/nvim-cmp"}) -- The completion plugin
--	use({ "hrsh7th/cmp-buffer"}) -- buffer completions
--	use({ "hrsh7th/cmp-path"}) -- path completions
--	use({ "saadparwaiz1/cmp_luasnip"}) -- snippet completions
--	use({ "hrsh7th/cmp-nvim-lsp"})
--	use({ "hrsh7th/cmp-nvim-lua"})
--  -- Colorizer
--  use({"norcalli/nvim-colorizer.lua"})
--	-- snippets
--	use({ "L3MON4D3/LuaSnip"}) --snippet engine
--	use({ "rafamadriz/friendly-snippets"}) -- a bunch of snippets to use
--
--	-- LSP
--	use({ "neovim/nvim-lspconfig"}) -- enable LSP
--	use { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" }
--
--	-- Telescope
--	use({ "nvim-telescope/telescope.nvim"})
--
--	-- Treesitter
--	use({
--		"nvim-treesitter/nvim-treesitter",
--    "nvim-treesitter/playground"
--	})
--
--  -- Tabs
--    use {'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons'}
--	-- Git
--	use({ "lewis6991/gitsigns.nvim" })
--    use {'tpope/vim-fugitive'}
--	-- Automatically set up your configuration after cloning packer.nvim
--	-- Put this at the end after all plugins
--	if PACKER_BOOTSTRAP then
--		require("packer").sync()
--	end
--end)
