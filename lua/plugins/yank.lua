vim.cmd([[
augroup fix_yank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system('xclip -selection clipboard', @0) | endif
augroup END
]])
