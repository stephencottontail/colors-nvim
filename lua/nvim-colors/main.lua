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
local function init()
  vim.api.nvim_set_option("background", "light")
  nvim.ex.hi("clear")
  vim.api.nvim_set_var("colors_name", "catppuccin")
  set_highlight("Normal", get_color("text"), get_color("base"))
  set_highlight("Cursor", get_color("rosewater"), get_color("base"))
  set_highlight("CursorLine", "NONE", get_color("surface0"))
  set_highlight("StatusLine", "foreground", "background", {"inverse"})
  set_highlight("StatusLineNC", get_color("overlay0"), "background", {"inverse"})
  set_highlight("Search", "NONE", "NONE")
  set_highlight("IncSearch", get_color("base"), get_color("blue"))
  set_highlight("Constant", "NONE", "NONE")
  set_highlight("Character", "NONE", "NONE")
  set_highlight("Statement", "NONE", "NONE")
  set_highlight("Conditional", "NONE", "NONE")
  set_highlight("Repeat", "NONE", "NONE")
  set_highlight("Label", "NONE", "NONE")
  set_highlight("Operator", "NONE", "NONE")
  set_highlight("Keyword", "NONE", "NONE")
  set_highlight("Comment", get_color("mauve"), "NONE")
  set_highlight("String", get_color("green"), "NONE")
  set_highlight("StringDelimiter", get_color("green"), "NONE")
  set_highlight("Number", get_color("peach"), "NONE")
  set_highlight("Boolean", get_color("peach"), "NONE")
  set_highlight("Float", get_color("peach"), "NONE")
  set_highlight("Function", get_color("lavender"), "NONE")
  set_highlight("Identifier", get_color("lavender"), "NONE")
  set_highlight("vimOption", get_color("lavender"), "NONE")
  set_highlight("FennelDefine", "NONE", "NONE")
  set_highlight("FennelMacro", get_color("lavender"), "NONE")
  return set_highlight("FennelLuaFunction", get_color("lavender"), "NONE")
end
_2amodule_2a["init"] = init
--[[ (defn foo [?attr] (if (= (type ?attr) "table") (accumulate [result "" i n (ipairs ?attr)] (.. result n)) "nothing")) (foo ["foo" "bar"]) (foo) (set-highlight "StatusLineNC" "rebeccapurple" "#c0ff33" ["inverse" "undercurl"]) (set-highlight "StatusLine" "rebeccapurple" "#c0ffee" ["bold" "undercurl"]) (accumulate [opts "" i n (ipairs ["foo" "bar" "baz" "qux"])] (.. opts n ",")) (vim.api.nvim_set_option "background" "light") (nvim.ex.hi "clear") (vim.api.nvim_get_option "termguicolors") (vim.api.nvim_set_var "colors_name" "catppuccin") (get-color "rosewater") ]]
return _2amodule_2a