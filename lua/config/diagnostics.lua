-- Configures diagnostic messages
-- Disable virtual text
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Show diagnostics on cursor hold
vim.api.nvim_create_autocmd('CursorHold', {callback = function()
    local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line('.') - 1 })

    if #diagnostics == 0 then
        return
    end

    -- Find the highest severity (lowest number)
    local max_severity = vim.diagnostic.severity.HINT
    for _, d in ipairs(diagnostics) do
        if d.severity < max_severity then
            max_severity = d.severity
        end
    end

    -- Set header based on severity
    local severity_map = {
      [vim.diagnostic.severity.ERROR] = '󰅚  Oh no! Look what you have done! 󰅚 ',
      [vim.diagnostic.severity.WARN] = '󰀪  Be careful with this, my boy 󰀪 ',
      [vim.diagnostic.severity.INFO] = '󰋽  Just so you know ;) 󰋽 ',
      [vim.diagnostic.severity.HINT] = '󰌶  Psst, you might want to fix this 󰌶 ',
    }

    vim.diagnostic.open_float(nil, {
        focus = false,
        border = 'rounded',
        source = 'always',
        header = severity_map[max_severity] or 'Diagnostic',
        prefix = function(diagnostic, i, total)
            local icon = '■'
            local hl_group

            if diagnostic.severity == vim.diagnostic.severity.ERROR then
                hl_group = 'DiagnosticError'
            elseif diagnostic.severity == vim.diagnostic.severity.WARN then
                hl_group = 'DiagnosticWarn'
            elseif diagnostic.severity == vim.diagnostic.severity.INFO then
                hl_group = 'DiagnosticInfo'
            elseif diagnostic.severity == vim.diagnostic.severity.HINT then
                hl_group = 'DiagnosticHint'
            end
            return icon .. ' ', hl_group
        end,
        scope = 'cursor'
    })
  end
})

