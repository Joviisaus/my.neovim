require("plugins.plugins-setup")

require("core.options")
require("core.keymaps")

-- 插件
require("plugins.dashboard")
require("plugins.lualine")
require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/comment")
require("plugins/autopairs")
require("plugins/bufferline")
require("plugins/gitsigns")
require("plugins/telescope")
require("plugins/toggleterm")
require("plugins/smoothcursor")
require("plugins/mini")
require("plugins/notify")
require("plugins/yank")

require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
-- 格式化
require("lsp.formatter")

require("dap.nvim-dap")

