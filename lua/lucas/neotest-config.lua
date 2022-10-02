local neotest = require("neotest")

neotest.setup({
    adapters = {
        require("neotest-vim-test")({ ignore_filetypes = { "python", "lua" } }),
        require('neotest-jest')({
            jestCommand = "npx jest --",
            jestConfigFile = "jest.config.ts",
            env = { CI = true },
            cwd = function()
                return vim.fn.getcwd()
            end,
        }),
    }
})

-- local mappings = {
--     ["<leader>nr"] = function()
--       neotest.run.run(vim.fn.expand("%"))
--     end,
--     ["<leader>ns"] = function()
--       for _, adapter_id in ipairs(neotest.run.adapters()) do
--         neotest.run.run({ suite = true, adapter = adapter_id })
--       end
--     end,
--     ["<leader>nw"] = function()
--       neotest.watch.watch()
--     end,
--     ["<leader>nx"] = function()
--       neotest.run.stop()
--     end,
--     ["<leader>nn"] = neotest.run.run,
--     ["<leader>nd"] = function()
--       neotest.run.run({ strategy = "dap" })
--     end,
--     ["<leader>nl"] = neotest.run.run_last,
--     ["<leader>nD"] = function()
--       neotest.run.run_last({ strategy = "dap" })
--     end,
--     ["<leader>na"] = neotest.run.attach,
--     ["<leader>no"] = function()
--       neotest.output.open({ enter = true })
--     end,
--     ["<leader>nO"] = function()
--       neotest.output.open({ enter = true, short = true })
--     end,
--     ["<leader>np"] = neotest.summary.toggle,
--     ["<leader>nm"] = neotest.summary.run_marked,
--     -- ["[n"] = function()
--     --   neotest.jump.prev({ status = "failed" })
--     -- end,
--     -- ["]n"] = function()
--     --   neotest.jump.next({ status = "failed" })
--     -- end,
--   }
--
--   for keys, mapping in pairs(mappings) do
--     vim.api.nvim_set_keymap("n", keys, "", { callback = mapping, noremap = true })
--   end
