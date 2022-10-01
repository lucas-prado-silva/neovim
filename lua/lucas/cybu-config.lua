local ok, cybu = pcall(require, "cybu")

if not ok then
    return
end

cybu.setup({
    behavior = {
        mode = {
            default = {
                switch = 'immediate',
                view = 'paging'
            },
            last_used = {
                switch = 'immediate',
                view = 'paging'
            }
        }
    },
    display_time = 500
})
