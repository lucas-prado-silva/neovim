return {
    "yetone/avante.nvim",
    event = "VeryLazy",
    enabled = false,
    opts = {
        ---@alias Provider "openai" | "claude" | "azure" | "cohere" | [string]
        provider = "copilot", -- Only recommend using Claude
        mappings = {
            ask = "<leader>aa",
            edit = "<leader>ae",
            refresh = "<leader>ar",
            --- @class AvanteConflictMappings
            diff = {
                ours = "<leader>co",
                theirs = "<leader>ct",
                both = "<leader>cb",
                next = "]x",
                prev = "[x",
            },
            jump = {
                next = "]]",
                prev = "[[",
            },
            submit = {
                normal = "<CR>",
                insert = "<C-s>",
            },
            toggle = {
                debug = "<leader>ad",
                hint = "<leader>ah",
            },
        },
        hints = { enabled = true },
        windows = {
            wrap = true, -- similar to vim.o.wrap
            width = 30, -- default % based on available width
            sidebar_header = {
                align = "center", -- left, center, right for title
                rounded = true,
            },
        },
        highlights = {
            ---@type AvanteConflictHighlights
            diff = {
                current = "DiffText",
                incoming = "DiffAdd",
            },
        },
        --- @class AvanteConflictUserConfig
        diff = {
            debug = false,
            autojump = true,
            ---@type string | fun(): any
            list_opener = "copen",
        },
    },
    dependencies = {
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        --- The below dependencies are optional,
        "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
        {
            -- Make sure to setup it properly if you have lazy=true
            'MeanderingProgrammer/render-markdown.nvim',
            opts = {
                file_types = { "markdown", "Avante" },
            },
            ft = { "markdown", "Avante" },
        },
    },
}
