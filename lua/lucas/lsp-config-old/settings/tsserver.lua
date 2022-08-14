local custom_attach = function(bufnr)
    local keymap_opts = { buffer = bufnr, silent = true, noremap = true }
    -- LSP mappings (only apply when LSP client attached)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
    vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, keymap_opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, keymap_opts)

    -- diagnostics
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.open_float, keymap_opts) -- diagnostic(s) on current line
    vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, keymap_opts) -- move to next diagnostic in buffer
    vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, keymap_opts) -- move to prev diagnostic in buffer
    vim.keymap.set("n", "<leader>da", vim.diagnostic.setqflist, keymap_opts) -- show all buffer diagnostics in qflist
    vim.keymap.set("n", "H", vim.lsp.buf.code_action, keymap_opts) -- code actions (handled by telescope-ui-select)
    vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, keymap_opts) -- manual formatting, because sometimes they just decide to stop working

    -- use omnifunc
    vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
    vim.bo[bufnr].formatexpr = "v:lua.vim.lsp.formatexpr"

    -- format on save
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function() vim.lsp.buf.format() end,
    })
end

return {
    on_attach = function(client, bufnr)
        local ts_utils = require("nvim-lsp-ts-utils")
        ts_utils.setup({
            update_imports_on_move = true,
            enable_import_on_completion = true,
            auto_inlay_hints = true, -- doesn't _quite_ work
            inlay_hints_highlight = "Comment",
            inlay_hints_format = {
                Type = {
                    highlight = "Comment",
                    text = function(text) return "->" .. text end,
                },
                Parameter = {
                    highlight = "Comment",
                },
                Enum = {
                    highlight = "Comment",
                },
            },
        })

        ts_utils.setup_client(client)

        -- TS specific mappings
        vim.keymap.set("n", "<Leader>io", "<cmd>TSLspOrganize<CR>", { buffer = bufnr, silent = true, noremap = true }) -- organize imports

        custom_attach(client)
    end,
    filetypes = {"typescript", "typescriptreact", "typescript.tsx"}
}
