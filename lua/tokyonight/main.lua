local _2afile_2a = "fnl/tokyonight/main.fnl"
local _2amodule_name_2a = "tokyonight.main"
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
local nvim, u = autoload("aniseed.nvim"), autoload("utils")
do end (_2amodule_locals_2a)["nvim"] = nvim
_2amodule_locals_2a["u"] = u
local function init()
  nvim.ex.hi("clear")
  vim.api.nvim_set_var("colors_name", "tokyonight")
  return u["set-highlight"]("String", "rebeccapurple", "NONE")
end
_2amodule_2a["init"] = init
return _2amodule_2a