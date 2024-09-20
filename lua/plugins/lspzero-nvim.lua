return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    enabled = true,
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },             -- Required
        { 'williamboman/mason.nvim' },           -- Optional
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },     -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'L3MON4D3/LuaSnip' },     -- Required

        -- LSP Saga Support
        { 'nvimdev/lspsaga.nvim' },
    },
    config = function()
        -- An example nvim-lspconfig capabilities setting
        local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

        -- Ensure that dynamicRegistration is enabled! This allows the LS to take into account actions like the
        -- Create Unresolved File code action, resolving completions for unindexed code blocks, ...
        capabilities.workspace = {
            didChangeWatchedFiles = {
                dynamicRegistration = true,
            },
        }

        require("lspconfig").markdown_oxide.setup({
            capabilities = capabilities, -- again, ensure that capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true
            on_attach = function(client, bufnr)
                local lsp = require('lsp-zero').preset({})
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp.default_keymaps({ buffer = bufnr })

                local opts = { buffer = bufnr, remap = false }

                -- setup Markdown Oxide daily note commands
                if client.name == "markdown_oxide" then
                    vim.api.nvim_create_user_command(
                        "Daily",
                        function(args)
                            local input = args.args

                            vim.lsp.buf.execute_command({ command = "jump", arguments = { input } })
                        end,
                        { desc = 'Open daily note', nargs = "*" }
                    )
                end

                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
                vim.keymap.set("n", "[e", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "]e", function() vim.diagnostic.goto_prev() end, opts)
                vim.keymap.set("n", "[e", function() vim.diagnostic.goto_next() end, opts)
                vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
                vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            end -- configure your on attach config
        })

        local lsp = require('lsp-zero').preset({})

        lsp.ensure_installed({ --[[ 'eslint',  ]]'rust_analyzer', 'tsserver', 'graphql' })

        lsp.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp.default_keymaps({ buffer = bufnr })

            local opts = { buffer = bufnr, remap = false }

            -- setup Markdown Oxide daily note commands
            if client.name == "markdown_oxide" then
                vim.api.nvim_create_user_command(
                    "Daily",
                    function(args)
                        local input = args.args

                        vim.lsp.buf.execute_command({ command = "jump", arguments = { input } })
                    end,
                    { desc = 'Open daily note', nargs = "*" }
                )
            end

            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "[e", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]e", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "[e", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        end)

        -- When you don't have mason.nvim installed
        -- You'll need to list the servers installed in your system
        -- lsp.setup_servers({'tsserver', 'eslint'})

        -- (Optional) Configure lua language server for neovim
        require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

        lsp.setup()

        -- You need to setup `cmp` after lsp-zero
        local cmp = require('cmp')
        local cmp_action = require('lsp-zero').cmp_action()

        cmp.setup({
            mapping = {
                -- `Enter` key to confirm completion
                ['<CR>'] = cmp.mapping.confirm({ select = true }),

                -- Ctrl+Space to trigger completion menu
                ['<C-Space>'] = cmp.mapping.complete(),

                -- Navigate between snippet placeholder
                ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                ['<C-b>'] = cmp_action.luasnip_jump_backward(),
            },
            sources = cmp.config.sources({
                {
                    name = 'nvim_lsp',
                    option = {
                        markdown_oxide = {
                            keyword_pattern = [[\(\k\| \|\/\|#\)\+]]
                        }
                    }
                },
                -- { name = 'vsnip' }, -- For vsnip users.
                -- { name = 'luasnip' }, -- For luasnip users.
                -- { name = 'ultisnips' }, -- For ultisnips users.
                -- { name = 'snippy' }, -- For snippy users.
            })
        })
    end
}
