(module nvim-colors.main
  {autoload {nvim aniseed.nvim}})

(def latte {:rosewater "#dc8a78"
            :flamingo "#dd7878"
            :pink "#ea76cb"
            :mauve "#8839ef"
            :red "#d20f39"
            :maroon "#e64553"
            :peach "#fe640b"
            :yellow "#df8e1c"
            :green "#40a02b"
            :teal "#179299"
            :sky "#04a5e5"
            :sapphire "#209fb5"
            :blue "#1e66f5"
            :lavender "#7287fd"
            :text "#4c4f69"
            :subtext1 "#5c5f77"
            :subtext0 "#6c6f85"
            :overlay2 "#7c7f93"
            :overlay1 "#8c8fa1"
            :overlay0 "#9ca0b0"
            :surface2 "#acb0be"
            :surface1 "#bcc0cc"
            :surface0 "#ccd0da"
            :base "#eff1f5"
            :mantle "#e6e9ef"
            :crust "#dce0e8"})

(def macchiato {:rosewater "#f4dbd6"
                :flamingo "#f0c6c6"
                :pink "#f5bde6"
                :mauve "#c6a0f6"
                :red "#ed8796"
                :maroon "#ee99a0"
                :peach "#f5a97f"
                :yellow "#eed49f"
                :green "#a6da85"
                :teal "#8bd5ca"
                :sky "#91d7e3"
                :sapphire "#7dc4e4"
                :blue "#8aadf4"
                :lavender "#b7bdf8"
                :text "#cad3f5"
                :subtext1 "#b8c0e0"
                :subtext0 "#a5adcb"
                :overlay2 "#939ab7"
                :overlay1 "#8087a2"
                :overlay0 "#6e738d"
                :surface2 "#5b6078"
                :surface1 "#494d64"
                :surface0 "#363a4f"
                :base "#24273a"
                :mantle "#1e2030"
                :crust "#181926"})

(defn get-color [color]
  "Gets the appropriate color depending on NeoVim's `background` setting"
  (let [bg (vim.opt.background:get)] 
    (if (= "light" bg)
      (. latte color)
      (= "dark" bg)
      (. macchiato color))))

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

(defn init []
  (vim.api.nvim_set_var "colors_name" "catppuccin")
  (set-highlight "StatusLine" (get-color "text") (get-color "overlay2"))
  (set-highlight "StatusLineNC" (get-color "surface2") (get-color "text")))

(comment
  (defn foo [?attr]
    (if (= (type ?attr) "table")
      (accumulate [result ""
                   i n (ipairs ?attr)]
        (.. result n))
      "nothing"))
  (foo ["foo" "bar"])
  (foo)
  (set-highlight "StatusLineNC" "rebeccapurple" "#c0ff33" ["inverse" "undercurl"])
  (set-highlight "StatusLine" "rebeccapurple" "#c0ffee" ["bold" "undercurl"]) 
  (accumulate [opts ""
               i n (ipairs ["foo" "bar" "baz" "qux"])]
    (.. opts n ",")) ; "foo,bar,baz,qux,"
  (vim.api.nvim_get_option "termguicolors")
  (vim.api.nvim_set_var "colors_name" "catppuccin")
  (get-color "rosewater"))
