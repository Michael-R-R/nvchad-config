local M = {}

M.setup = function()

    require('lint').linters_by_ft = {
        markdown = {'proselint', }
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
            require("lint").try_lint()
        end,
    })

end

return M