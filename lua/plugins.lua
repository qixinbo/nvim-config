local packer = require("packer")
packer.startup(
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    -- 你的插件列表...
    -- use("folke/tokyonight.nvim")
    use("ellisonleao/gruvbox.nvim")

    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- bufferline (新增)
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    -- lualine (新增)
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    -- telescope （新增）
    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    -- dashboard-nvim (新增)
    use("glepnir/dashboard-nvim")
    -- project
    use("ahmedkhalf/project.nvim")
    -- treesitter （新增）
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    -- use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0"})
    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")

    use("mhartington/formatter.nvim")

    use("terrortylor/nvim-comment")

end)

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)