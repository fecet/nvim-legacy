local gps = require("nvim-gps")

local function gps_content()
    if gps.is_available() then
        return gps.get_location()
    else
        return ""
    end
end

local symbols_outline = {
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'filetype'},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'location'}
    },
    filetypes = {'Outline'}
}

local colors = {
  yellow = '#ECBE7B',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#98be65',
  orange = '#FF8800',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#51afef',
  red = '#ec5f67'
}


local config={
    options = {
        icons_enabled = true,
        theme = "dracula-nvim",
        disabled_filetypes = {},
        component_separators = "|",
        section_separators = {left = "", right = ""}
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {{"branch"}, {"diff"}},
        lualine_c = {
            -- {"lsp_progress"}, {gps_content, cond = gps.is_available},
            {gps_content, cond = gps.is_available},
            -- {require('auto-session-library').current_session_name}
        },
        lualine_x = {
            {
                "diagnostics",
                sources = {'nvim_diagnostic'},
                symbols = {error = " ", warn = " ", info = " "}
            }
        },
        lualine_y = {"filetype", "encoding", "fileformat"},
        lualine_z = {"progress", "location"}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {
        "quickfix", "nvim-tree", "toggleterm", "fugitive", symbols_outline
    }

}




local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
	'lsp_progress',
	display_components = { 'lsp_client_name', { 'title', 'percentage', 'message' }},
	-- With spinner
	-- display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' }},
	colors = {
	  percentage  = colors.cyan,
	  title  = colors.cyan,
	  message  = colors.cyan,
	  spinner = colors.cyan,
	  lsp_client_name = colors.magenta,
	  use = true,
	},
	separators = {
		component = ' ',
		progress = ' | ',
		message = { pre = '(', post = ')'},
		percentage = { pre = '', post = '%% ' },
		title = { pre = '', post = ': ' },
		lsp_client_name = { pre = '[', post = ']' },
		spinner = { pre = '', post = '' },
		message = { commenced = 'In Progress', completed = 'Completed' },
	},
	display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' } },
	timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
	spinner_symbols = { '🌑 ', '🌒 ', '🌓 ', '🌔 ', '🌕 ', '🌖 ', '🌗 ', '🌘 ' },
}

require("lualine").setup(config)
