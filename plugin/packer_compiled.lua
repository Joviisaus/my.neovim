-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/jingouyang/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/Users/jingouyang/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/Users/jingouyang/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/Users/jingouyang/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/jingouyang/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "git@github.com:numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "git@github.com:L3MON4D3/LuaSnip"
  },
  ["SmoothCursor.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17smoothcursor\frequire\0" },
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/SmoothCursor.nvim",
    url = "git@github.com:gen740/SmoothCursor.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "git@github.com:akinsho/bufferline.nvim"
  },
  ["cmake-tools.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/cmake-tools.nvim",
    url = "git@github.com:Civitasv/cmake-tools.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "git@github.com:hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "git@github.com:hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "git@github.com:hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "git@github.com:hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "git@github.com:hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "git@github.com:hrsh7th/cmp-vsnip"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "git@github.com:saadparwaiz1/cmp_luasnip"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "git@github.com:mhartington/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "git@github.com:rafamadriz/friendly-snippets"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "git@github.com:projekt0n/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "git@github.com:lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\nÁ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\14glow_path-/opt/homebrew/Cellar/glow/1.5.1/bin/glow\16width_ratio\4æÌ™³\6æÌ™ÿ\3\vheight\3d\nwidth\3P\npager\1\17height_ratio\4æÌ™³\6æÌ™ÿ\3\vborder\vshadow\nsetup\tglow\frequire\0" },
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/glow.nvim",
    url = "git@github.com:ellisonleao/glow.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0" },
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/goto-preview",
    url = "git@github.com:rmagatti/goto-preview"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "git@github.com:ellisonleao/gruvbox.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "git@github.com:ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "git@github.com:onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "git@github.com:glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "git@github.com:nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "git@github.com:williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "git@github.com:williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "git@github.com:echasnovski/mini.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "git@github.com:folke/neodev.nvim"
  },
  ["neovim-cmake"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/neovim-cmake",
    url = "git@github.com:Shatur/neovim-cmake"
  },
  ["noice.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "git@github.com:folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "git@github.com:MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "git@github.com:windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "git@github.com:hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "git@github.com:mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "git@github.com:mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "git@github.com:rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "git@github.com:theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-highlight-colors"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-highlight-colors",
    url = "git@github.com:brenoprata10/nvim-highlight-colors"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "git@github.com:jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "git@github.com:neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "git@github.com:rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "git@github.com:nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "git@github.com:nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "git@github.com:p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "git@github.com:nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "git@github.com:wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "git@github.com:nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "git@github.com:nvim-lua/popup.nvim"
  },
  ["rayso.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/rayso.nvim",
    url = "git@github.com:TobinPalmer/rayso.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "git@github.com:simrat39/rust-tools.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "git@github.com:b0o/schemastore.nvim"
  },
  ["startup.nvim"] = {
    config = { "\27LJ\2\nS\0\0\5\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0A\0\0\1K\0\1\0\22plugins.dashboard\nsetup\fstartup\frequire\0" },
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/startup.nvim",
    url = "git@github.com:startup-nvim/startup.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "git@github.com:nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "git@github.com:nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "git@github.com:akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "git@github.com:folke/tokyonight.nvim"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "git@github.com:christoomey/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/jingouyang/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "git@github.com:hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: SmoothCursor.nvim
time([[Config for SmoothCursor.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17smoothcursor\frequire\0", "config", "SmoothCursor.nvim")
time([[Config for SmoothCursor.nvim]], false)
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
try_loadstring("\27LJ\2\nS\0\0\5\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0A\0\0\1K\0\1\0\22plugins.dashboard\nsetup\fstartup\frequire\0", "config", "startup.nvim")
time([[Config for startup.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: glow.nvim
time([[Config for glow.nvim]], true)
try_loadstring("\27LJ\2\nÁ\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\14glow_path-/opt/homebrew/Cellar/glow/1.5.1/bin/glow\16width_ratio\4æÌ™³\6æÌ™ÿ\3\vheight\3d\nwidth\3P\npager\1\17height_ratio\4æÌ™³\6æÌ™ÿ\3\vborder\vshadow\nsetup\tglow\frequire\0", "config", "glow.nvim")
time([[Config for glow.nvim]], false)
-- Config for: goto-preview
time([[Config for goto-preview]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0", "config", "goto-preview")
time([[Config for goto-preview]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
