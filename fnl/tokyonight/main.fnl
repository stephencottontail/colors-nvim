(module tokyonight.main
  {autoload {nvim aniseed.nvim
             u utils}})

(def tokyonight {:red "#f7768e"
                 :yellow "#e0af68"
                 :green "#73daca"
                 :cyan "#7dcfff"
                 :blue "#7aa2f7"
                 :magenta "#bb9af7"
                 :white "#c0caf5"
                 :black "#414868"
                 :bg "#24283b"})

(defn init []
  (nvim.ex.hi "clear")
  (vim.api.nvim_set_var "colors_name" "tokyonight")
  (u.set-highlight "Normal" (. tokyonight "white") (. tokyonight "bg"))
  (u.set-highlight "StatusLine" "foreground" "background" ["inverse"])
  (u.set-highlight "StatusLineNC" "foreground" "background" ["inverse"])
  (u.set-highlight "Search" "foreground" "background" ["inverse"])
  (u.set-highlight "IncSearch" "foreground" "background" ["inverse"])

  ;; syntax elements
  (u.set-highlight "Constant" "NONE" "NONE")
  (u.set-highlight "Character" "NONE" "NONE")
  (u.set-highlight "Statement" "NONE" "NONE")
  (u.set-highlight "Conditional" "NONE" "NONE")
  (u.set-highlight "Repeat" "NONE" "NONE")
  (u.set-highlight "Label" "NONE" "NONE")
  (u.set-highlight "Operator" "NONE" "NONE")
  (u.set-highlight "Keyword" "NONE" "NONE")
  (u.set-highlight "Comment" (. tokyonight "magenta") "NONE")
  (u.set-highlight "String" (. tokyonight "green") "NONE") ; "#73daca"
  (u.set-highlight "StringDelimiter" (. tokyonight "green") "NONE") ; "#73daca"
  (u.set-highlight "Number" (. tokyonight "cyan") "NONE")
  (u.set-highlight "Boolean" (. tokyonight "cyan") "NONE")
  (u.set-highlight "Float" (. tokyonight "cyan") "NONE")
  (u.set-highlight "Function" (. tokyonight "blue") "NONE")
  (u.set-highlight "Identifier" (. tokyonight "blue") "NONE")
  (u.set-highlight "vimOption" (. tokyonight "blue") "NONE")
  (u.set-highlight "FennelDefine" "NONE" "NONE")
  (u.set-highlight "FennelMacro" (. tokyonight "blue") "NONE")
  (u.set-highlight "FennelLuaFunction" (. tokyonight "blue") "NONE")
  )

