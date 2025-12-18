-- OSC 52 clipboard support for SSH sessions
-- This allows copying to the local clipboard even when connected via SSH
-- Only activated when in an SSH session to avoid conflicts with system clipboard

local function is_ssh_session()
  return vim.env.SSH_TTY ~= nil or vim.env.SSH_CONNECTION ~= nil
end

if is_ssh_session() then
  local function paste()
    return {
      vim.fn.split(vim.fn.getreg(""), "\n"),
      vim.fn.getregtype(""),
    }
  end

  local osc52 = require('vim.ui.clipboard.osc52')

  vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
      ['+'] = osc52.copy('+'),
      ['*'] = osc52.copy('*'),
    },
    paste = {
      ['+'] = paste,
      ['*'] = paste,
    },
  }
end
