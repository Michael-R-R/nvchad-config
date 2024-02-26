local M = {}

M.setup = function()
    vim.opt.spelllang = { 'en_us' }
    require('cmp').setup({
    sources = {
        {
            name = 'spell',
            option = {
                keep_all_entries = false,
                enable_in_context = function()
                    return true
                end,
            },
        },
    },
    })
end

return M