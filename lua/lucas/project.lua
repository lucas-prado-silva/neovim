local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
	return
end
project.setup({
	-- Show hidden files in telescope
	show_hidden = false,

	-- When set to false, you will get a message when project.nvim changes your
	-- directory.
	silent_chdir = true,

	-- What scope to change the directory, valid options are
	-- * global (default)
	-- * tab
	-- * win
	scope_chdir = 'global',
})

local tele_status_ok, telescope = pcall(require, "telescope")
if not tele_status_ok then
	return
end

telescope.load_extension('projects')
