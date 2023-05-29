local _2afile_2a = "fnl/utils/colors.fnl"
local _2amodule_name_2a = "utils.colors"
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
local function get_color(color)
  local bg = (vim.opt.background):get()
  if ("light" == bg) then
    return "light"
  elseif ("dark" == bg) then
    return "dark"
  else
    return nil
  end
end
_2amodule_2a["get-color"] = get_color
return _2amodule_2a