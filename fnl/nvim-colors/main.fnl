(module nvim-colors.main
  {autoload {nvim aniseed.nvim
             u utils}})

(def catppuccin [{:rosewater "#dc8a78"
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
                  :crust "#dce0e8"
                  }
                 {:rosewater "#f4dbd6"
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
                  :crust "#181926"}])

(defn init []
  (nvim.ex.hi "clear")
  (vim.api.nvim_set_var "colors_name" "catppuccin")
  (u.set-highlight "Normal" (u.get-color "text") (u.get-color "base"))
  (u.set-highlight "Cursor" "NONE" (u.get-color "rosewater"))
  (u.set-highlight "CursorLine" "NONE" (u.get-color "surface0"))
  (u.set-highlight "StatusLine" "foreground" "background" ["inverse"])
  (u.set-highlight "StatusLineNC" (u.get-color "overlay0") "background" ["inverse"])
  (u.set-highlight "Search" "NONE" "NONE")
  (u.set-highlight "IncSearch" (u.get-color "base") (u.get-color "blue"))

  ;; syntax elements
  (u.set-highlight "Constant" "NONE" "NONE")
  (u.set-highlight "Character" "NONE" "NONE")
  (u.set-highlight "Statement" "NONE" "NONE")
  (u.set-highlight "Conditional" "NONE" "NONE")
  (u.set-highlight "Repeat" "NONE" "NONE")
  (u.set-highlight "Label" "NONE" "NONE")
  (u.set-highlight "Operator" "NONE" "NONE")
  (u.set-highlight "Keyword" "NONE" "NONE")
  (u.set-highlight "Comment" (u.get-color "mauve") "NONE")
  (u.set-highlight "String" (u.get-color "green") "NONE")
  (u.set-highlight "StringDelimiter" (u.get-color "green") "NONE")
  (u.set-highlight "Number" (u.get-color "peach") "NONE")
  (u.set-highlight "Boolean" (u.get-color "peach") "NONE")
  (u.set-highlight "Float" (u.get-color "peach") "NONE")
  (u.set-highlight "Function" (u.get-color "lavender") "NONE")
  (u.set-highlight "Identifier" (u.get-color "lavender") "NONE")
  (u.set-highlight "vimOption" (u.get-color "lavender") "NONE")
  (u.set-highlight "FennelDefine" "NONE" "NONE")
  (u.set-highlight "FennelMacro" (u.get-color "lavender") "NONE")
  (u.set-highlight "FennelLuaFunction" (u.get-color "lavender") "NONE"))

(comment
  (u.set-highlight "String" (u.get-color "mauve" catppuccin) "NONE")
  (u.get-color "rosewater")
  (defn foo [?attr]
    (if (= (type ?attr) "table")
      (accumulate [result ""
                   i n (ipairs ?attr)]
        (.. result n))
      "nothing"))
  (foo ["foo" "bar"])
  (foo)
  (u.set-highlight "StatusLineNC" "rebeccapurple" "#c0ff33" ["inverse" "undercurl"])
  (u.set-highlight "StatusLine" "rebeccapurple" "#c0ffee" ["bold" "undercurl"]) 
  (accumulate [opts ""
               i n (ipairs ["foo" "bar" "baz" "qux"])]
    (.. opts n ",")) ; "foo,bar,baz,qux,"
  (vim.api.nvim_set_option "background" "light")
  (nvim.ex.hi "clear") ; nil
  (vim.api.nvim_get_option "termguiu")
  (vim.api.nvim_set_var "u_name" "catppuccin")
  (u.get-color "rosewater") ; "dark"
  (u.get-color "rosewater" catppuccin) ; "#f4dbd6"
  (. (. catppuccin 2) "rosewater") ; "#f4dbd6"
  ; {:base "#24273a"
  ;  :blue "#8aadf4"
  ;  :crust "#181926"
  ;  :flamingo "#f0c6c6"
  ;  :green "#a6da85"
  ;  :lavender "#b7bdf8"
  ;  :mantle "#1e2030"
  ;  :maroon "#ee99a0"
  ;  :mauve "#c6a0f6"
  ;  :overlay0 "#6e738d"
  ;  :overlay1 "#8087a2"
  ;  :overlay2 "#939ab7"
  ;  :peach "#f5a97f"
  ;  :pink "#f5bde6"
  ;  :red "#ed8796"
  ;  :rosewater "#f4dbd6"
  ;  :sapphire "#7dc4e4"
  ;  :sky "#91d7e3"
  ;  :subtext0 "#a5adcb"
  ;  :subtext1 "#b8c0e0"
  ;  :surface0 "#363a4f"
  ;  :surface1 "#494d64"
  ;  :surface2 "#5b6078"
  ;  :teal "#8bd5ca"
  ;  :text "#cad3f5"
  ;  :yellow "#eed49f"}
  )
