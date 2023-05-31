(module tokyonight.main
  {autoload {nvim aniseed.nvim
             u utils}})

(defn init []
  (nvim.ex.hi "clear")
  (vim.api.nvim_set_var "colors_name" "tokyonight")
  (u.set-highlight "String" "rebeccapurple" "NONE"))

