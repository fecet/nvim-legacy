return function()
  require('telescope').setup {
    defaults = {
      prompt_prefix = '🔭 ',
      -- prompt_position = 'top',
      selection_caret = " ",
      sorting_strategy = 'ascending',
      -- results_width = 0.6,
      file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
      grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
      qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    },
    --[[ extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    } ]]
  }
  -- require('telescope').load_extension('fzy_native')
  -- require('telescope').load_extension('coc')
  -- require('telescope').load_extension('projects')
  -- require('telescope').load_extension('session-lens')
  -- require'telescope'.load_extension('dotfiles')
  -- require'telescope'.load_extension('gosource')
end

