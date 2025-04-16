;;; charcoal-calm-theme.el --- A soft dark theme with warm purples -*- lexical-binding: t; -*-

(deftheme charcoal-calm
  "A soft dark theme based on #2A2F38 and muted tones for eye comfort.")

(let ((class '((class color) (min-colors 89)))
      ;; Base colors
      (bg         "#2A2F38")
      (fg         "#CCCCCC")
      (cursor     "#A8D8B9")
      (region     "#3E4E50")
      (highlight  "#333C43")
      (fringe     "#2A2F38")
      (prompt     "#CBA6F7")
      (border     "#444444")

      ;; Syntax colors
      (comment    "#708090")
      (string     "#A8D8B9")
      (keyword    "#CBA6F7")
      (func       "#CCCCCC")
      (var        "#CCCCCC")
      (type       "#DDB6F2")
      (constant   "#CBA6F7")
      (builtin    "#CBA6F7")
      (warning    "#FF6F61")
      (info       "#A8D8B9")
      (hint       "#FFD580"))

  (custom-theme-set-faces
   'charcoal-calm

   ;; Basic UI
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor ((,class (:background ,cursor))))
   `(region ((,class (:background ,region))))
   `(highlight ((,class (:background ,highlight))))
   `(fringe ((,class (:background ,fringe))))
   `(vertical-border ((,class (:foreground ,border))))
   `(minibuffer-prompt ((,class (:foreground ,prompt :weight bold))))
   `(link ((,class (:foreground ,type :underline t))))
   `(shadow ((,class (:foreground "#666666"))))
   `(match ((,class (:background ,region :foreground ,fg :weight bold))))

   ;; Line Numbers
   `(line-number ((,class (:inherit default :foreground "#555555" :background ,bg))))
   `(line-number-current-line ((,class (:inherit default :foreground ,fg :background "#2F343D"))))

   ;; Syntax
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,constant))))
   `(font-lock-function-name-face ((,class (:foreground ,func))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,string))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face ((,class (:foreground ,warning :weight bold))))
   `(font-lock-doc-face ((,class (:foreground ,string :slant italic))))

   ;; Mode line
   `(mode-line ((,class (:background "#3A3F4B" :foreground ,fg :box nil))))
   `(mode-line-inactive ((,class (:background "#2F343D" :foreground "#888888" :box nil))))

   ;; Completion (company/corfu)
   `(company-tooltip ((,class (:background "#2F343D" :foreground ,fg))))
   `(company-tooltip-selection ((,class (:background ,highlight :foreground ,fg))))
   `(company-tooltip-annotation ((,class (:foreground ,type))))
   `(company-scrollbar-bg ((,class (:background "#2A2F38"))))
   `(company-scrollbar-fg ((,class (:background "#44475a"))))
   `(corfu-default ((,class (:background "#2F343D" :foreground ,fg))))
   `(corfu-current ((,class (:background ,highlight :foreground ,fg))))

   ;; Search
   `(isearch ((,class (:background "#555555" :foreground ,fg))))
   `(lazy-highlight ((,class (:background "#44475a" :foreground ,fg))))

   ;; Eldoc
   `(eldoc-highlight-function-argument ((,class (:foreground ,keyword :weight bold))))

   ;; Flycheck / Flymake
   `(flycheck-error ((,class (:underline (:style wave :color ,warning)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,hint)))))
   `(flycheck-info ((,class (:underline (:style wave :color ,info)))))
   `(flymake-error ((,class (:underline (:style wave :color ,warning)))))
   `(flymake-warning ((,class (:underline (:style wave :color ,hint)))))
   `(flymake-note ((,class (:underline (:style wave :color ,info)))))

   ;; Compilation
   `(compilation-error ((,class (:foreground ,warning))))
   `(compilation-warning ((,class (:foreground ,hint))))
   `(compilation-info ((,class (:foreground ,info))))

   ;; Org
   `(org-level-1 ((,class (:foreground ,keyword :weight bold :height 1.2))))
   `(org-level-2 ((,class (:foreground ,type :weight bold :height 1.1))))
   `(org-level-3 ((,class (:foreground ,string))))
   `(org-link ((,class (:foreground ,type :underline t))))
   `(org-block ((,class (:background "#2E3440" :foreground ,fg))))
   `(org-code ((,class (:background ,highlight :foreground ,string))))
   `(org-block-begin-line ((,class (:background "#2F343D" :foreground "#888888" :slant italic))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,keyword :weight bold))))
   `(dired-flagged ((,class (:foreground ,warning))))
   `(dired-header ((,class (:foreground ,prompt :weight bold))))

   ;; Eshell
   `(eshell-prompt ((,class (:foreground ,prompt :weight bold))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,prompt :weight bold))))
   `(magit-branch-local ((,class (:foreground ,type))))
   `(magit-branch-remote ((,class (:foreground ,string))))
   `(magit-diff-added ((,class (:background "#334D3C" :foreground "#A8D8B9"))))
   `(magit-diff-removed ((,class (:background "#4D3333" :foreground ,warning))))

   ;; Diff
   `(diff-added ((,class (:background "#334D3C" :foreground ,string))))
   `(diff-removed ((,class (:background "#4D3333" :foreground ,warning))))

   ;; Which-key
   `(which-key-key-face ((,class (:foreground ,prompt))))
   `(which-key-command-description-face ((,class (:foreground ,fg))))

   ;; Rainbow delimiters
   `(show-paren-match ((,class (:background "#44475a" :foreground ,fg :weight bold))))
   `(paren-face ((,class (:foreground "#555555"))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,prompt))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,type))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,string))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,fg))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,comment))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground "#888888"))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,warning :background ,region :weight bold))))

   ;; Tabs
   `(tab-bar ((,class (:background ,bg :foreground ,fg))))
   `(tab-bar-tab ((,class (:background ,highlight :foreground ,fg :weight bold))))
   `(tab-bar-tab-inactive ((,class (:background ,bg :foreground ,comment))))

   ;; LSP
   `(lsp-face-highlight-textual ((,class (:background ,highlight :weight bold))))
   `(lsp-face-highlight-read ((,class (:underline (:color ,type)))))
   `(lsp-face-highlight-write ((,class (:underline (:color ,warning :style wave)))))

   ;; Tree-sitter
   `(tree-sitter-hl-face:comment ((,class (:foreground ,comment :slant italic))))
   `(tree-sitter-hl-face:string ((,class (:foreground ,string))))
   `(tree-sitter-hl-face:function ((,class (:foreground ,func))))
   `(tree-sitter-hl-face:keyword ((,class (:foreground ,keyword :weight bold))))
   `(tree-sitter-hl-face:type ((,class (:foreground ,type))))
   `(tree-sitter-hl-face:variable ((,class (:foreground ,var))))
   `(tree-sitter-hl-face:constant ((,class (:foreground ,constant))))

   ;; Vertico / Marginalia
   `(vertico-current ((,class (:background ,highlight :foreground ,fg))))
   `(marginalia-documentation ((,class (:foreground ,comment))))
   `(orderless-match-face-0 ((,class (:foreground ,keyword :weight bold))))
   `(orderless-match-face-1 ((,class (:foreground ,type :weight bold))))
   `(orderless-match-face-2 ((,class (:foreground ,string :weight bold))))
   `(orderless-match-face-3 ((,class (:foreground ,prompt :weight bold))))
   ))

(provide-theme 'charcoal-calm)
;;; charcoal-calm-theme.el ends here
