return {
  { -- Linting
    'mfussenegger/nvim-lint',
    enabled = true, -- Change to true to enable
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        markdown = { 'markdownlint' },
        python = { 'pylint' },
        sql = { 'sqlfluff' },
        json = { 'jsonlint' },
      }
      -- Create autocommand to trigger linting
      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}