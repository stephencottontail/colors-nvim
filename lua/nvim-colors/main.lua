local _2afile_2a = "fnl/nvim-colors/main.fnl"
local _2amodule_name_2a = "nvim-colors.main"
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
local autoload = (require("nvim-colors.aniseed.autoload")).autoload
local nvim = autoload("nvim-colors.aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
local latte = {rosewater = "#dc8a78", flamingo = "#dd7878", pink = "#ea76cb", mauve = "#8839ef", red = "#d20f39", maroon = "#e64553", peach = "#fe640b", yellow = "#df8e1c", green = "#40a02b", teal = "#179299", sky = "#04a5e5", sapphire = "#209fb5", blue = "#1e66f5", lavender = "#7287fd", text = "#4c4f69", subtext1 = "#5c5f77", subtext0 = "#6c6f85", overlay2 = "#7c7f93", overlay1 = "#8c8fa1", overlay0 = "#9ca0b0", surface2 = "#acb0be", surface1 = "#bcc0cc", surface0 = "#ccd0da", base = "#eff1f5", mantle = "#e6e9ef", crust = "#dce0e8"}
_2amodule_2a["latte"] = latte
local macchiato = {rosewater = "#f4dbd6", flamingo = "#f0c6c6", pink = "#f5bde6", mauve = "#c6a0f6", red = "#ed8796", maroon = "#ee99a0", peach = "#f5a97f", yellow = "#eed49f", green = "#a6da85", teal = "#8bd5ca", sky = "#91d7e3", sapphire = "#7dc4e4", blue = "#8aadf4", lavender = "#b7bdf8", text = "#cad3f5", subtext1 = "#b8c0e0", subtext0 = "#a5adcb", overlay2 = "#939ab7", overlay1 = "#8087a2", overlay0 = "#6e738d", surface2 = "#5b6078", surface1 = "#494d64", surface0 = "#363a4f", base = "#24273a", mantle = "#1e2030", crust = "#181926"}
_2amodule_2a["macchiato"] = macchiato
local function get_color(color)
  local bg = (vim.opt.background):get()
  if ("light" == bg) then
    return latte[color]
  elseif ("dark" == bg) then
    return macchiato[color]
  else
    return nil
  end
end
_2amodule_2a["get-color"] = get_color
local function set_highlight(group, fg, bg, _3fattr)
  local group0 = group
  local fg0 = fg
  local bg0 = bg
  return nvim.ex.hi((group0 .. " guifg=" .. fg0 .. " guibg=" .. bg0))
end
_2amodule_2a["set-highlight"] = set_highlight
local function init()
  set_highlight("StatusLine", get_color("text"), get_color("overlay2"))
  return set_highlight("StatusLineNC", get_color("surface2"), get_color("text"))
end
_2amodule_2a["init"] = init
--[[ (get-color "rosewater") ]]
return _2amodule_2a