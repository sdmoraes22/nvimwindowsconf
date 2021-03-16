local actions = require('telescope.actions')

local M = {}
M.git_branches = function()
    require("telescope.builtin").git_branches({
        atach_mappings = function(prompt_bufnr, map)
            map('i', '<c-d>', actions.git_delete_branch)
            map('n', '<c-d>', actions.git_delete_branch)
            return true
        end
    })
end

M.initialize = function()
    require("telescope").setup {
        defaults = {
            file_sorter = require('telescope.sorters').get_fzy_sorter,
            prompt_prefix = ' >',
            color_devicons = true,

            file_previewer = require('telescope.previewers').vim_buffer_cat.new,
            file_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
            file_previewer = require('telescope.previewers').vim_buffer_qflist.new,

            mappings = {
                i = {
                    ["C-x"] = false,
                    ["C-q"] = actions.send_to_qflist,

                }
            }
        },
        extensions = {
            fzy_native = {
                override_generic_file_sorter = false,
                override_file_sorter = true,
            }
        }
    }
    require("telescope").load_extension('fzy_native')
end


return M


