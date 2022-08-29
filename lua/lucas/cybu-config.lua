local ok, cybu = pcall(require, "cybu")

if not ok then
    return
end

cybu.setup({
    behavior = {
        mode = {
            default = {
                switch = 'on_close',
                view = 'paging'
            },
            last_used = {
                switch = 'on_close',
                view = 'paging'
            }
        }
    },
    display_time = 500
})
