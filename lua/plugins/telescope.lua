return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")
    local keymap = vim.keymap
    require("telescope").setup({

      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })
    keymap.set("n", "<leader>ff", builtin.find_files, {}) -- find files
    keymap.set("n", "<leader>fc", builtin.grep_string, {}) -- find string under cursor
    keymap.set("n", "<leader>fs", builtin.live_grep, {}) -- search for a string
    keymap.set("n", "<leader>pp", builtin.planets, {}) -- fun easter egg 
  end,
}
