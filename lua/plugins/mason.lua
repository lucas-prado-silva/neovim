return {
    "williamboman/mason.nvim",
    -- Load on use
    event = "VeryLazy",
    enabled = true,
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
    end
}
