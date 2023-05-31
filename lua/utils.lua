local _2afile_2a = "fnl/utils.fnl"
local _2amodule_name_2a = "utils"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local nvim = autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
local function set_highlight(group, fg, bg, _3fattr)
  local opts
  if (type(_3fattr) == "table") then
    local opts0 = ""
    for i, n in ipairs(_3fattr) do
      opts0 = (opts0 .. n .. ",")
    end
    opts = opts0
  else
    opts = "NONE"
  end
  return nvim.ex.hi((group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. opts))
end
_2amodule_2a["set-highlight"] = set_highlight
local function get_color(color, colors)
  local bg = (vim.opt.background):get()
  if ("light" == bg) then
    return (colors[1])[color]
  elseif ("dark" == bg) then
    return (colors[2])[color]
  else
    return nil
  end
end
_2amodule_2a["get-color"] = get_color
return _2amodule_2a