local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

local nord0 = "#2E3440"
local nord1 = "#3B4252"
local nord9 = "#81A1C1"
local fill = nord0 --'#181c24' if separator_style is "slant"
local indicator = nord9
local bg = nord0
local buffer_bg = nord0
local buffer_bg_selected = nord1
local buffer_bg_visible = "#2A2F3A"

bufferline.setup {
	options = {
		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
		indicator = {
			-- icon = "│", -- should be omitted if indicator style is not 'icon'
			style = 'none'
		},
		modified_icon = "●",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 21,
		diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,
		offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1, highlight = "Directory" } },
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "slant", -- | "thick" | "slant" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
		always_show_bufferline = true,
	},
	highlights = {
		fill = {
			bg = fill
		},
		background = {
			bg = bg,
		},

		buffer_selected = {
			bg = buffer_bg_selected,
		},
		buffer_visible = {
			bg = buffer_bg_visible,
			italic = true
		},

		numbers = {
			bg = buffer_bg,
		},
		numbers_selected = {
			bg = buffer_bg_selected,
		},
		numbers_visible = {
			bg = buffer_bg_visible,
			italic = true
		},

		diagnostic = {
			bg = buffer_bg,
		},
		diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},
		diagnostic_visible = {
			bg = buffer_bg_visible
		},

		hint = {
			bg = buffer_bg,
		},
		hint_visible = {
			bg = buffer_bg_visible,
		},
		hint_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},
		hint_diagnostic = {
			bg = buffer_bg,
		},
		hint_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		hint_diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},

		info = {
			bg = buffer_bg;
		},
		info_visible = {
			bg = buffer_bg_visible,
		},
		info_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},
		info_diagnostic = {
			bg = buffer_bg,
		},
		info_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		info_diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},

		warning = {
			bg = buffer_bg,
		},
		warning_visible = {
			bg = buffer_bg_visible,
		},
		warning_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},
		warning_diagnostic = {
			bg = buffer_bg,
		},
		warning_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		warning_diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},
		error = {
			bg = buffer_bg,
		},
		error_visible = {
			bg = buffer_bg_visible,
		},
		error_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},
		error_diagnostic = {
			bg = buffer_bg,
		},
		error_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		error_diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},

		close_button = {
			bg = buffer_bg,
		},
		close_button_visible = {
			bg = buffer_bg_visible,
		},
		close_button_selected = {
			bg = buffer_bg_selected,
		},

		duplicate = {
			bg = buffer_bg,
		},
		duplicate_selected = {
			bg = buffer_bg_selected,
		},
		duplicate_visible = {
			bg = buffer_bg_visible,
		},

		separator = {
			fg = fill,
			bg = buffer_bg,
		},
		separator_selected = {
			fg = fill,
			bg = buffer_bg_selected,
		},
		separator_visible = {
			fg = fill,
			bg = buffer_bg_visible,
		},
		modified = {
			bg = buffer_bg,
		},
		modified_selected = {
			bg = buffer_bg_selected,
		},
		modified_visible = {
			bg = buffer_bg_visible,
		},
		indicator_selected = {
			fg = indicator,
			bg = buffer_bg_selected,
		},
		pick = {
			bg = buffer_bg,
			bold = true,
			italic = true,
		},
		pick_selected = {
			bg = buffer_bg_selected,
			bold = true,
			italic = true,
		},
		pick_visible = {
			bg = buffer_bg_visible,
			bold = true,
			italic = true,
		},
	},
}
