return {
  {
    'github/copilot.vim',
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- CopilotChat uses the authenticated session from this plugin
      { 'nvim-lua/plenary.nvim' }, -- Required for network requests
    },
    build = 'make tiktoken', -- Compiles support for token counting (required on macOS/Linux)
    opts = {
      -- You can customize configuration here, e.g., window layout
      -- window = { layout = 'float' },
    },
    keys = {
      { '<leader>cc', ':CopilotChatToggle<CR>', desc = '[C]opilot [C]hat Toggle' },
      { '<leader>ce', ':CopilotChatExplain<CR>', desc = '[C]opilot [E]xplain' },
      { '<leader>cf', ':CopilotChatFix<CR>', desc = '[C]opilot [F]ix' },
      { '<leader>ct', ':CopilotChatTests<CR>', desc = '[C]opilot [T]ests' },
    },
  },
}