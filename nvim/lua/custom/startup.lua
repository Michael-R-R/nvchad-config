local M = {}

M.startup = function()
  vim.cmd.source("~/.config/nvim/vimrc.vim")
  vim.cmd("set nu!")
	vim.cmd("set nocindent nosmartindent noautoindent")
  vim.cmd("set conceallevel=2")

  vim.diagnostic.config({ virtual_text = false })

  -- Set text width
  vim.cmd([[autocmd BufRead * set fo+=t tw=73|normal ggG]])

  -- Turn spell check on/off 
  vim.cmd([[autocmd InsertEnter * setlocal nospell]])
  vim.cmd([[autocmd InsertLeave * setlocal spell]])

  -- Show line diagnostics automatically in hover window
  vim.o.updatetime = 250
  vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

end

return M
