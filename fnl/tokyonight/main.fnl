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
  (u.set-highlight "Normal" (. tokyonight "white") (. tokyonight "bg")) ; "#c0caf5"
  (u.set-highlight "String" (. tokyonight "green") "NONE")) ; "#73daca"

