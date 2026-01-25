-- Neo-tree is a filesystem navigation plugin
return {
  'nvim-neo-tree/neo-tree.nvim',
  enabled = true, -- Change to true to enable
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        never_show = {
          '.DS_Store',
          '__pycache__',
          'target', -- dbt target folder
        },
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}