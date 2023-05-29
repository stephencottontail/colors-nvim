(module utils.colors)

(defn get-color [color colors]
  "Gets the appropriate COLOR from COLORS depending on
  NeoVim's `background` setting

  COLORS[1] is the colors for light backgrounds and
  COLORS[2] is the colors for dark backgrounds"
  (let [bg (vim.opt.background:get)]
    (if (= "light" bg)
      (. (. colors 1) color)
      (= "dark" bg)
      (. (. colors 2) color))))

