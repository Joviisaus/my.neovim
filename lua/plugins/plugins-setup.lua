-- 自动安装packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意PackerCompile改成了PackerSync
-- plugins.lua改成了plugins-setup.lua，适应本地文件名字
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' 
  use 'projekt0n/github-nvim-theme'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use { "ellisonleao/gruvbox.nvim" } 
  use 'echasnovski/mini.nvim'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'mfussenegger/nvim-dap'
  use {'rcarriga/nvim-notify'
  }
  use 'MunifTanjim/nui.nvim' 
  use {'folke/noice.nvim', 
      opts = {
      lsp = {
        signature = {
          enabled = false,
        },
      },
    },

  }
  use { 'sainnhe/everforest' }

  use {
  'rmagatti/goto-preview',
  config = function()
    require('goto-preview').setup {}
  end
}
  use {'TobinPalmer/rayso.nvim',
    require('rayso').setup()
  }
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

  use { 'gen740/SmoothCursor.nvim',
  config = function()
    require('smoothcursor').setup()
  end
}
  use {
    'nvim-tree/nvim-tree.lua',  -- 文档树
    requires = {
      'nvim-tree/nvim-web-devicons', -- 文档树图标
    }
  }
  use {
    'brenoprata10/nvim-highlight-colors'
  }
  use "christoomey/vim-tmux-navigator" -- 用ctl-hjkl来定位窗口
-- use "nvim-treesitter/nvim-treesitter" -- 语法高亮
  use "p00f/nvim-ts-rainbow" -- 配合treesitter，不同括号颜色区分
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",  -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  }
    -- 自动补全
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippets引擎，不装这个自动补全会出问题
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- 文件路径

  use {
  "ray-x/lsp_signature.nvim",
}
  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号

  use "akinsho/bufferline.nvim" -- buffer分割线
  use "lewis6991/gitsigns.nvim" -- 左则git提示

  use {"ellisonleao/glow.nvim", config = function() require("glow").setup(
        {
  glow_path = "/opt/homebrew/Cellar/glow/1.5.1/bin/glow",
  border = "shadow", -- floating window border config
  --style = "dark|light", -- filled automatically with your current editor background, you can override using glow json style
  pager = false,
  width = 80,
  height = 100,
  width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
  height_ratio = 0.7,
}
    ) end} --markdown

  use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    require"startup".setup(require("plugins.dashboard"))
  end
}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',  -- 文件检索
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "nvim-lua/popup.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use 'Civitasv/cmake-tools.nvim'
  use "williamboman/mason-lspconfig.nvim" 
  use "neovim/nvim-lspconfig"
  use "Shatur/neovim-cmake" 
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/vim-vsnip" 
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/cmp-nvim-lsp" 
  use "hrsh7th/cmp-buffer" 
  use "hrsh7th/cmp-path" 
  use "hrsh7th/cmp-cmdline" 
  use "hrsh7th/cmp-nvim-lsp-signature-help" 
  use "rafamadriz/friendly-snippets" 
  use "onsails/lspkind-nvim"
  use "glepnir/lspsaga.nvim"
  use "mhartington/formatter.nvim"
  -- "jose-elias-alvarez/null-ls.nvim",
  -- "nvim-lua/plenary.nvim",
  -- TypeScript 增强
  use "jose-elias-alvarez/nvim-lsp-ts-utils"
  use "nvim-lua/plenary.nvim"
  -- Lua 增强
  use "folke/neodev.nvim"
  -- JSON 增强
  use "b0o/schemastore.nvim"
  -- Rust 增强
  use "simrat39/rust-tools.nvim"

  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "theHamsta/nvim-dap-virtual-text"
  use "mfussenegger/nvim-dap-python"

  

  if packer_bootstrap then
    require('packer').sync()
  end
end,
  
  config = {
    git = {
      default_url_format = 'git@github.com:%s',
    },
    display = {
      open_fn = function()
        return require("packer.util").float({border = "single" })
      end,
    },
},})


