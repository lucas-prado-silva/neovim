local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
    max_preview_lines = 20,
    server_filetype_map = {
        typescript = 'typescript'
    },
}

