return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup{
      numhl = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 0,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        map('n', ']h', function()
          if vim.wo.diff then return ']h' end
          vim.schedule(function() gs.next_hunk() end)
          return '<Ignore>'
        end, {expr=true})

        map('n', '[h', function()
          if vim.wo.diff then return '[h' end
          vim.schedule(function() gs.prev_hunk() end)
          return '<Ignore>'
        end, {expr=true})

        map('n', '<leader>gsh', gs.stage_hunk)
        map('n', '<leader>gu', gs.undo_stage_hunk)
        map('n', '<leader>gsb', gs.stage_buffer)
        map('n', '<leader>gd', gs.diffthis)
        map('n', '<leader>gb', gs.toggle_current_line_blame)
        map('n', '<leader>gp', gs.preview_hunk)
      end
    }
  end
}
