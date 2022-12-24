local wk = require("which-key")

require("which-key").setup {
	operators = { gc = "Comments" },
	window = {
		border = "none", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
		winblend = 0
	},
	show_keys = true, -- show the currently pressed key and its label as a message in the command line
	triggers = "auto", -- automatically setup triggers
	disable = {
		buftypes = {},
		filetypes = { "TelescopePrompt" },
	},
}

wk.register({
	f = {
		name = "find",
		f = {
			name = "files in current dir",
		},
		t = {
			name = "text in current dir",
		},
		r = {
			name = "recently opened files",
		},
		b = {
			name = "buffers",
			b = {
				name = "buffers",
			},
			t = {
				name = "text inside current buffer",
			},
		},
		p = {
			name = "projects",
		},
		s = {
			name = "searches",
		},
		c = {
			name = "colorschemes",
		},
		z = {
			name = "resume latest search",
		},
		v = {
			name = "vim",
			h = {
				name = "highlights",
			},
		},
		g = {
			name = "git",
			f = {
				name = "files in current repo",
			},
			c = {
				name = "commits",
				c = {
					name = "all commits"
				},
				b = {
					name = "commits from current buffer"
				}
			},
			b = {
				name = "branches",
			},
			s = {
				name = "stashes",
			},
			d = {
				name = "diff",
				o = {
					name = "open",
				},
				c = {
					name = "close",
				},
				h = {
					name = "history",
					b = {
						name = "branch",
					},
					f = {
						name = "file",
					},
				},
			},
		}
	},
	l = {
		name = "lsp",
		r = {
			name = "references",
		},
		R = {
			name = "References (Telescope)",
		},
		i = {
			name = "Implementations",
		},
		I = {
			name = "Implementations (Telescope)",
		},
		d = {
			name = "Definitions",
		},
		D = {
			name = "Definitions (Telescope)",
		},
		t = {
			name = "Types",
		},
		T = {
			name = "Types (Telescope)",
		},
		q = {
			name = "quickfix",
		},
		x = {
			name = "diagnostics",
		},
		n = {
			name = "rename",
		},
		j = {
			name = "Next Diagnostic",
		},
		k = {
			name = "Previous Diagnostic",
		},
		l = {
			name = "Log",
		},
		w = {
			name = "Replace Word",
		},
	},
	c = {
		name = "Code",
		a = {
			name = "Action",
		},
	},
	r = {
		name = "Resize"
	},
	v = {
		name = "Vim",
		w = {
			name = "Workspace Symbol"
		},
		d = {
			name = "Diagnostic"
		},
		c = {
			name = "Code",
			a = {
				name = "Action"
			},
		},
		l = {
			name = "LSP",
			r = {
				name = "References"
			},
		},
		r = {
			name = "Rename"
		},
	},
	x = {
		name = "Add write permissions to current file"
	},
	g = {
		name = "git",
		d = {
			name = "diff"
		},
		h = {
			name = "+Github",
			c = {
				name = "+Commits",
				c = { "<cmd>GHCloseCommit<cr>", "Close" },
				e = { "<cmd>GHExpandCommit<cr>", "Expand" },
				o = { "<cmd>GHOpenToCommit<cr>", "Open To" },
				p = { "<cmd>GHPopOutCommit<cr>", "Pop Out" },
				z = { "<cmd>GHCollapseCommit<cr>", "Collapse" },
			},
			i = {
				name = "+Issues",
				p = { "<cmd>GHPreviewIssue<cr>", "Preview" },
			},
			l = {
				name = "+Litee",
				t = { "<cmd>LTPanel<cr>", "Toggle Panel" },
			},
			r = {
				name = "+Review",
				b = { "<cmd>GHStartReview<cr>", "Begin" },
				c = { "<cmd>GHCloseReview<cr>", "Close" },
				d = { "<cmd>GHDeleteReview<cr>", "Delete" },
				e = { "<cmd>GHExpandReview<cr>", "Expand" },
				s = { "<cmd>GHSubmitReview<cr>", "Submit" },
				z = { "<cmd>GHCollapseReview<cr>", "Collapse" },
			},
			p = {
				name = "+Pull Request",
				c = { "<cmd>GHClosePR<cr>", "Close" },
				d = { "<cmd>GHPRDetails<cr>", "Details" },
				e = { "<cmd>GHExpandPR<cr>", "Expand" },
				o = { "<cmd>GHOpenPR<cr>", "Open" },
				p = { "<cmd>GHPopOutPR<cr>", "PopOut" },
				r = { "<cmd>GHRefreshPR<cr>", "Refresh" },
				t = { "<cmd>GHOpenToPR<cr>", "Open To" },
				z = { "<cmd>GHCollapsePR<cr>", "Collapse" },
			},
			t = {
				name = "+Threads",
				c = { "<cmd>GHCreateThread<cr>", "Create" },
				n = { "<cmd>GHNextThread<cr>", "Next" },
				t = { "<cmd>GHToggleThread<cr>", "Toggle" },
			},
		},
		c = {
			name = "hunk",
			n = {
				name = "next"
			},
			p = {
				name = "previous"
			},
			s = {
				name = "stage"
			},
			S = {
				name = "stage buffer"
			},
			r = {
				name = "reset"
			},
			R = {
				name = "reset buffer"
			},
			u = {
				name = "undo stage hunk"
			},
			h = {
				name = "preview"
			},
			b = {
				name = "blame"
			},
			B = {
				name = "toggle current line blame"
			},
			d = {
				name = "diff"
			},
			D = {
				name = "diff this"
			},
			t = {
				name = "toggle deleted"
			},
		},
		s = {
			name = "status"
		}
	},
	n = {
		name = "toggle text search highlight"
	},
	m = {
		name = "marks (1 for mark 1)",
		a = {
			name = "add"
		},
		m = {
			name = "menu"
		},
	},
	a = {
		name = "ai",
		c = {
			name = "Chat GPT"
		},
	},
	-- m = {
	-- 	name = "move"
	-- },
	e = {
		name = "File Explorer"
	},
	E = {
		name = "Toggle File Explorer"
	},
	s = {
		name = "Save File"
	},
	d = {
		name = "Delete to the Void Register"
	},
	y = {
		name = "Yank to the System Clipboard"
	},
	p = {
		name = "Paste to the Void Register"
	},
	t = {
		name = "tests"
	}
}, { prefix = "<leader>" })
