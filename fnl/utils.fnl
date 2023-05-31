(module utils
  {autoload {nvim aniseed.nvim}})

;; need to use `nvim.ex.hi` here (equivalent to `:hi`) instead of
;; `vim.cmd` because the latter didn't work for some dumb reason
;; and also the documentation for the latter is insane
(defn set-highlight [group fg bg ?attr]
  "Wrapper function to set highlight group GROUP with
  foreground color FG, background color BG, and an optional
  table of attributes ATTR (see `:help highlight-args`)" 
  (let [opts (if (= (type ?attr) "table")
               (accumulate [opts ""
                            i n (ipairs ?attr)]
                 (.. opts n ","))
               "NONE")]
    (nvim.ex.hi (.. group " guifg=" fg " guibg=" bg " gui=" opts))))

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

