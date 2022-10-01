local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

-- local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
-- ft_to_parser.motoko = "typescript"

configs.setup {
    ensure_installed = "all", -- one of "all" or a list of languages
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
    highlight = {
        -- use_languagetree = true,
        enable = true, -- false will disable the whole extension
        -- disable = { "css", "html" }, -- list of language that will be disabled
        -- disable = { "css", "markdown" }, -- list of language that will be disabled
        disable = { "markdown" }, -- list of language that will be disabled
        -- additional_vim_regex_highlighting = true,
    },
    autopairs = {
        enable = true,
    },
    matchup = {
        enable = true,
    },
    indent = { enable = true, disable = { "python", "css", "rust" } },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
        config = {
            javascript = {
                __default = '// %s',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = '// %s',
                comment = '// %s'
            }
        }
    },
    autotag = {
        enable = true,
        disable = { "markdown" },
    },
    rainbow = {
        enable = true,
        colors = {
            "#68a0b0",
            "#946EaD",
            "#c7aA6D",
            -- "Gold",
            -- "Orchid",
            -- "DodgerBlue",
            -- "Cornsilk",
            -- "Salmon",
            -- "LawnGreen",
        },
        disable = { "html" },
    },
    playground = {
        enable = false,
    },
}
