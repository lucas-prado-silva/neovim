require("ide").setup({
	ignore_filetypes = {},
	root_patterns = { ".git/" },
	shadow_build = false,
	auto_create = true,
	debug = false,
	build_dir = "build",
	project_file = "project.nvide",
	mappings = {
		["<leader>pdg"] = function(project)
			if project:is_busy() and not project:has_state("debug") then
				return
			end

			project:debug()
		end,

		["<leader>pn"] = function(project)
			if project:has_state("debug") then
				project:debug({ type = "stepinto" })
			else
				vim.api.nvim_command(":NeoTreeShowToggle")
			end
		end,

		["<leader>pb"] = function(project)
			if project:has_state("debug") then
				project:debug({ type = "stepover" })
			else
				project:build()
			end
		end,

		["<leader>pr"] = function(project)
			if not project:has_state("run") then
				project:run()
			end
		end,

		["<leader>ps"] = function(project)
			project:settings()
		end,

		["<leader>pds"] = function(project)
			if project:has_state("debug") then
				project:debug({ type = "stop" })
			end
		end,

		["<leader>pps"] = function(project)
			if project:is_busy() and not project:has_state("debug") then
				project:stop()
			end
		end
	},

	quickfix = {
		pos = "bel"
	},

	integrations = {
		dap = {
			enable = false,
			config = {},

			highlights = {
				DapBreakpoint = { ctermbg = 0, fg = "#993939" },
				DapLogPoint   = { ctermbg = 0, fg = "#61afef" },
				DapStopped    = { ctermbg = 0, fg = "#98c379" },
			},

			signs = {
				DapBreakpoint          = { text = "", texthl = "DapBreakpoint", numhl = "DapBreakpoint" },
				DapBreakpointCondition = { text = "ﳁ", texthl = "DapBreakpoint", numhl = "DapBreakpoint" },
				DapBreakpointRejected  = { text = "", texthl = "DapBreakpoint", numhl = "DapBreakpoint" },
				DapLogPoint            = { text = "", texthl = "DapLogPoint", numhl = "DapLogPoint" },
				DapStopped             = { text = "", texthl = "DapStopped", numhl = "DapStopped" },
			}
		},

		dapui = {
			enable = true
		}
	}
})
