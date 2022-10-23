require('neorg').setup {
	load = {
		["core.defaults"] = {},
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					work = "~/notes/work",
					home = "~/notes/home",
				}
			}
		},
		["core.gtd.base"] = {},
		["core.norg.completion"] = {},
		["core.norg.concealer"] = {},
		["core.norg.journal"] = {},
		["core.norg.manoeuvre"] = {},
		["core.norg.qol.toc"] = {},
		["core.presenter"] = {},
		["core.export.markdown"] = {},
		["core.export"] = {},
		["core.integrations.telescope"] = {},
		-- External
		["external.context"] = {},
		["external.kanban"] = {},
	}
}
