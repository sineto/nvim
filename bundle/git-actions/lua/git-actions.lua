local M = {}

local git = require('git.command-helpers')
local Input = require('nui.input')
local event = require('nui.utils.autocmd').event

local input_props = {
  relative = "editor",
  position = "50%",
  size = {
      width = 20,
      height = 2,
  },
  border = {
    style = "rounded",
    text = {
        top = " Branch name: ",
        top_align = "left",
    },
  },
  win_options = {
    winblend = 10,
    winhighlight = "Normal:Normal",
  },
}

M.default_mappings = function (input)
  input:map("n", "<Esc>", input.input_props.on_close, { noremap = true })
end

M.checkout = function(args)
  local input = Input(input_props, {
    prompt = " ",
    on_close = function()
      print("Input closed!")
    end,
    on_submit = function(value)
      git.checkout(args, value)
    end,
  })

  -- mount/open the component
  input:mount()

  -- unmount component when cursor leaves buffer
  input:on(event.BufLeave, function()
    input:unmount()
  end)

  -- close the input window by pressing `<Esc>` on normal mode
  M.default_mappings(input)
end


return M