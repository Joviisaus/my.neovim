vim.g.mapleader = " "

local keymap = vim.keymap
local map = vim.api.nvim_set_keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv")
keymap.set("v", "<leader>k", ":m '>-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 调整窗口大小
keymap.set("n", "<leader>l", ":vertical resize +1<CR>")
keymap.set("n", "<leader>h", ":vertical resize -1<CR>")
keymap.set("n", "<leader>hh", ":resize -1<CR>")
keymap.set("n", "<leader>ll", ":resize +1<CR>")



-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap.set("t", '<C-q>', [[<c-\><c-n>]])

keymap.set("n", '<C-m>', ":Telescope media_files")

keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })

keymap.set('v', '<leader>rs', require('lib.create').create_snippet)

keymap.set('n', 's', function() require("flash").jump() end)
keymap.set('x', 's', function() require("flash").jump() end)
keymap.set('o', 's', function() require("flash").jump() end)

keymap.set('n', 'S', function() require("flash").treesitter() end)
keymap.set('x', 'S', function() require("flash").treesitter() end)
keymap.set('o', 'S', function() require("flash").treesitter() end)




-- telescope

-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- 环境里要安装ripgrep
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local pluginKeys = {}
local opt = {
  noremap = true,
  silent = true,
}


pluginKeys.comment = {
  -- Normal 模式快捷键
  toggler = {
    line = 'gcc',  -- 行注释
    block = 'gbc', -- 块注释
  },
  -- Visual 模式
  opleader = {
    line = 'gc',
    bock = 'gb',
  },
}



pluginKeys.mapLSP = function(mapbuf)
  mapbuf('n', '<leader>s', '<cmd>lua vim.lsp.buf.format { async = true }<CR>', opt)
  mapbuf('n', 'cm', '<cmd>Lspsaga rename<CR>', opt)
  mapbuf('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opt)
  mapbuf('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', opt)
  mapbuf('n', 'gD', '<cmd>Lspsaga peek_definition<CR>', opt)
  mapbuf('n', 'gt', '<cmd>Lspsaga peek_definition<CR>', opt)
  mapbuf('n', 'gh', '<cmd>Lspsaga hover_doc<cr>', opt)
  mapbuf('n', 'gr', '<cmd>Lspsaga lsp_finder<CR>', opt)
  mapbuf('n', 'gp', '<cmd>Lspsaga show_line_diagnostics<CR>', opt)
  mapbuf('n', 'gj', '<cmd>Lspsaga diagnostic_jump_next<CR>', opt)
  mapbuf('n', 'gk', '<cmd>Lspsaga diagnostic_jump_prev<CR>', opt)
  mapbuf('n', '<F8>', '<cmd>Lspsaga outline<CR>', opt)
end


-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
  end
  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
  end

  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<C-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<C-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace,
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    -- 如果窗口内容太多，可以滚动
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    -- Super Tab
    ["<C-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif vim.fn["vsnip#available"](1) == 1 then
        feedkey("<Plug>(vsnip-expand-or-jump)", "")
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, { "i", "s" })
  }
end

-- nvim-dap
pluginKeys.mapDAP = function()
  -- 结束
  map(
    'n',
    '<S-F5>',
    ":lua require'dap'.close()<CR>"
    .. ":lua require'dap'.terminate()<CR>"
    .. ":lua require'dap.repl'.close()<CR>"
    .. ":lua require'dapui'.close()<CR>"
    .. ":lua require('dap').clear_breakpoints()<CR>"
    .. '<C-w>o<CR>',
    opt
  )
  -- 开始/继续
  map('n', '<C-F5>', ":lua require'dap'.continue()<CR>", opt)
  -- 设置断点
  map('n', '<F6>', ":lua require'dap'.toggle_breakpoint()<CR>", opt)
  map('n', '<S-F6>', ":lua require'dap'.clear_breakpoints()<CR>", opt)
  --  stepOver, stepOut, stepInto
  map('n', '<F12>', ":lua require'dap'.step_over()<CR>", opt)
  map('n', '<S-F7>', ":lua require'dap'.step_out()<CR>", opt)
  map('n', '<F7>', ":lua require'dap'.step_into()<CR>", opt)
  -- 弹窗
  map('n', '<S-F12>', ":lua require'dapui'.eval()<CR>", opt)
end

return pluginKeys
