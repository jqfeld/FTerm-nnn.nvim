local term = require("FTerm.terminal")

local M = {}

local last_line = "last_line"

-- Return true if file exists and is readable.
function file_exists(path)
  local file = io.open(path, "rb")
  if file then file:close() end
  return file ~= nil
end

local split_strategy = "e"

local nnn = term:new():setup({
    cmd = "nnn -p /tmp/nvim_fterm_nnn_pick",
    term_opts = {
        on_exit = function(id, data, event)
            if file_exists("/tmp/nvim_fterm_nnn_pick") then
                vim.cmd(split_strategy .." "..vim.fn.readfile("/tmp/nvim_fterm_nnn_pick")[1])
            end
        end

        }
})



function M.nnn_toggle()
    split_strategy = "e"
    return nnn:toggle()
end

function M.nnn_vs_toggle()
    split_strategy = "vs"
    return nnn:toggle()
end

function M.nnn_hs_toggle()
    split_strategy = "sp"
    return nnn:toggle()
end

return M

