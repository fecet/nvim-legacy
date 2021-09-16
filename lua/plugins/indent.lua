return function()
require('indent_guides').setup({
  -- put your options in here
    indent_levels = 30;
    indent_guide_size = 1;
    indent_start_level = 1;
    indent_enable = true;
    indent_space_guides = true;
    indent_tab_guides = true;
    indent_soft_pattern = '\\s';
    exclude_filetypes = {'help','dashboard','dashpreview','NvimTree','vista','sagahover'};
    -- even_colors = { fg ='#37474F',bg='#6272a4' };
    odd_colors = {fg='#44475a',bg='#44475a'};
})
end
