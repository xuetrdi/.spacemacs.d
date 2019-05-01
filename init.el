(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     ivy
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t)
     better-defaults
     (syntax-checking :variables
                      syntax-checking-enable-by-default t
                      syntax-checking-enable-tooltips nil
                      :disabled-for
                      go
                      python)
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t)
     (markdown :variables markdown-live-preview-engine 'vmd)
     dash
     org
     (gtags :variables gtags-enable-by-default t)
     (latex :variables
            latex-build-command "LaTex"
            latex-enable-auto-fill t
            latex-enable-folding t)
     (shell :variables shell-default-shell 'zsh)
     dap
     lsp
     (python :variables ;;
             ;; python-backend 'anaconda
             python-sort-imports-on-save t
             python-tab-width 2
             python-indent-offset 2)
     (swift :variables
            swift-tab-width 2
            swift-indent-offset 2)
     lua
     html
     imenu-list
     (javascript :variables javascript-backend 'nil)
     gpu
     (c-c++ :variables
            c-c++-backend 'lsp-ccls
            ;; c-c++-backend 'rtags
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-google-style t
            c-c++-enable-google-newline t
            c-c++-lsp-executable (file-truename "~/config/ccls/Release/ccls")
            c-c++-lsp-sem-highlight-rainbow t
            c-c++-lsp-sem-highlight-method 'font-lock
            c-c++-lsp-cache-dir "/tm/lsp-ccls"
            ;; c-c++-enable-clang-support t
            )
     (cmake :variables cmake-enable-cmake-ide-support t)
     rust
     ess
     (julia :variables
            ;; julia-mode-enable-ess t
            julia-mode-enable-lsp t)
     themes-megapack
     graphviz
     yaml
     protobuf
     csv
     (go :variables
         go-tab-width 2
         gofmt-command "goimports"
         gofmt-before-save t)
     (chinese :package youdao-dictionary fcitx
              :variables chinese-enable-fcitx nil
              chinese-enable-youdao-dict t)
   )
   dotspacemacs-additional-packages '(go-autocomplete
                                      all-the-icons
                                      all-the-icons-dired
                                      all-the-icons-ivy
                                      julia-repl
                                      julia-mode
                                      ess
                                      sr-speedbar
                                      cdlatex
                                      auctex
                                      xah-math-input
                                      ;; lsp-mode
                                      ;; lsp-ui
                                      ;; company-lsp
                                      ;; dap-gdb-lldb-setup
                                      )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '(vi-tilde-fringe
                                    clean-aindent-mode
                                    chinese-pyim
                                    evil-args
                                    evil-ediff
                                    evil-mc
                                    evil-exchange
                                    evil-unimpaired
                                    evil-indent-plus
                                    evil-escape
                                    evil-lisp-state
                                    helm-flyspell
                                    helm-swoop
                                    helm-purpose
                                    helm-flyspell
                                    helm-spacemacs-help
                                    helm-themes
                                    helm-c-yasnippet
                                    counsel-projectile
                                    ;; org-projectile
                                    org-download
                                    org-timer
                                    ;; org-repo-todo
                                    ;; org-plus-contrib
                                    org-brain
                                    org-present
                                    orgit
                                    magit-gh-pulls
                                    magit-gitflow
                                    git-gutter
                                    git-gutter-fringe
                                    company-quickhelp
                                    gh-md
                                    magithub
                                    smooth-scrolling
                                    eyebrowse
                                    auto-dictionary
                                    flyspell-correct-helm
                                    ivy-purpose
                                    spacemacs-purpose-popwin
                                    window-purpose
                                    info+
                                    help-fns+
                                    hide-comnt
                                    )
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https nil
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists nil
   dotspacemacs-startup-lists '((recents . 5)
                               (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(
                         seti
                         badwolf
                         bubbleberry
                         cherry-blossom
                         ir-black
                         spolsky
                         afternoon
                         alect-black
                         alect-black-alt
                         wheatgrass
                         junio
                         purple-haze
                         spolsky
                         ir-black
                         monokai
                         spacemacs-dark
                         spacemacs-light)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Monaco"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.2
                               )
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup t
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers 'relative
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup t
   ))

(defun dotspacemacs/user-init ()
   (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
  )

(defun dotspacemacs/user-config ()
  ;; UTF-8
  (set-language-environment "UTF-8")
  (set-default-coding-systems 'utf-8)
  (setq locale-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  (setq powerline-default-separator 'utf-8)

  ;; go-complete
  (require 'go-autocomplete)
  (require 'auto-complete-config)
  (ac-config-default)
  (setq gofmt-command "goimports")

  ;; python anaconda-mode
  (setq socks-server '("Default server" "127.0.0.1" 1080 5))

  ;; python elpy
  (setq python-shell-prompt-detect-failure-warning nil)

  ;; Jalia
  (require 'julia-repl)
  (setq inferior-julia-program-name "/Applications/Julia-1.0.app/Contents/Resources/julia/bin/julia")
  ;; (add-hook 'julia-mode-hook 'julia-repl-mode)

  ;; orgmode preview set image size
  (image-type-available-p 'imagemagick)
  (setq org-image-actual-width '(400))

  ;; 导出文本阻止下划线成下标
  (setq org-export-with-sub-superscripts nil)
  ;; orgmode latex preview
  ;; (startup-latex-with-latex-preview t)
  ;; orgmode hotkey, such as <s
  (require 'org-tempo)
  ;; orgmode todolist
  (with-eval-after-load 'org
    ;; 进入Orgmode后转入cdlatex
    ;; (add-hook 'org-mode-hook 'turn-on-org-cdlatex)
    (plist-put org-format-latex-options :scale 1.5)
    (setq org-todo-keywords
        '((sequence "NEXT(n!)" "TODO(t)" "DOING(i!)" "HANGUP(h!)" "WORK" "LEARN" "|" "DONE(d!)" "CANCELED(c!)")))
    ;; (setq org-bullets-bullet-list '("◉" "○" "✸" "✿"))
    ;; Babel orgmode execute source code
    (org-babel-do-load-languages 'org-babel-load-languages
                                 '((emacs-lisp . t)
                                   (python . t)
                                   (dot . t)
                                   (latex . t)
                                   (shell . t)
                                   (C . t)
                                   (swift . t)
                                   (go . t)
                                   (julia . t)
                                   ))
    ;; org capture
    ;; (server-start)
    (require 'org-capture)
    (global-set-key (kbd "C-c c") 'org-capture)
    (setq org-default-notes-file "~/org/inbox.org")
    (setq org-capture-templates `(
	                                ("p" "Protocol" entry (file+headline ,(concat org-directory "~/Dropbox/org/notes.org") "Inbox")
                                   "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?")
	                                ("L" "Protocol Link" entry (file+headline ,(concat org-directory "~/Dropbox/org/notes.org") "Inbox")
                                   "* %? [[%:link][%(transform-square-brackets-to-round-ones \"%:description\")]]\n")
                                  ("r" "Book Reading Task" entry (file+olp "~/Dropbox/org/reading.org" "Reading" "Book")
                                   "* TODO %^{书名}\n%u\n%a\n" :clock-in t :clock-resume t)
                                  ("t" "Work Task" entry (file+headline "~/Dropbox/org/task.org" "Work")
                                   "* TODO %^{任务名}\n%u\n%a\n" :clock-in t :clock-resume t)
                                  ("w" "Web Collections" entry (file+headline "~/Dropbox/org/link.org" "Web")
                                   "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?")
                                  ("i" "Inbox" entry (file "~/Dropbox/org/inbox.org")
                                   "* %^{heading} %t %^g\n %?\n")
                                  ("c" "Contacts" entry (file "~/Dorpbox/org/contacts.org")
                                   "* %^{姓名} %^{手机号} %^{邮箱} %^{住址}p\n\n %?" :empty-lines 1)
                                  ("b" "Blog" plain (file ,(concat "~/Dropbox/org/blog/"
                                                                   (format-time-string "%Y-%m-%d.org")))
                                   ,(concat "#+startup: showall\n"
                                            "#+options: toc:nil\n"
                                            "#+begin_export html\n"
                                            "---\n"
                                            "layout     : post\n"
                                            "title      : %^{标题}\n"
                                            "categories : %^{类别}\n"
                                            "tags       : %^{标签}\n"
                                            "---\n"
                                            "#+end_export\n"
                                            "#+TOC: headlines 2\n"))
                                  ))
    )

  ;; bazel
  (add-hook 'bazel-mode-hook (lambda() (add-hook 'before-save-hook #'bazel-format nil t)))

  ;; all-the-icons
  (require 'all-the-icons)
  (use-package all-the-icons)
  (setq neo-theme 'icons)
  (all-the-icons-ivy-setup)

  ;; Magit
  ;; (setq-default magit-repository-directories '("~/repos/"))

  ;; LaTex
  (add-hook 'doc-view-minor-mode-hook 'auto-revert-mode)
  ;; (setq org-latex-create-formula-image-program 'dvipng)
  ;; math formatting convert image to PDF file and HTML file.
  (setq org-latex-create-formula-image-program 'imagemagick)
  ;; (setq org-preview-latex-process-alist 'imagemagick)
  ;; LaTex 输出PDF高亮代码, hotkey: C-c C-e l l
  ;; pdflatex -shell-escape -interaction nonstopmode <tex-file>
  (setq org-latex-listings 'minted)
  (add-to-list 'org-latex-packages-alist '("" "minted"))

  ;; xah-math-input, SHIFT + SPACE
  (global-xah-math-input-mode 1)
  (xah-math-input-mode 1)

  ;; C++
  (global-set-key [C-M-tab] 'clang-format-region)
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [tab] 'clang-format-buffer))

  (c-add-style "mystyle"
               '((c-basic-offset . 2)))
  ;; (push '(other . "gnu") c-default-style)

  (require 'sr-speedbar)

  ;; orgmode中英文对齐
  (when (configuration-layer/layer-usedp 'chinese)
    (when (and (spacemacs/system-is-mac) window-system)
      (spacemacs//set-monospaced-font "Monaco" "Hiragino Sans GB" 16 16)))
  ;; orgmode导出中文
  (setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                                "xelatex -interaction nonstopmode %f"))
  (setq org-latex-default-packages-alist
        (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist))


  (add-hook 'hack-local-variables-hook
            (lambda () (when (derived-mode-p 'python-mode) (lsp))))
  (setq lsp-print-io t)
  (use-package company-lsp
    :ensure t
    :config
    (require 'company-lsp)
    (push 'company-lsp company-backends)
    (add-hook 'after-init-hook 'global-company-mode))

  (use-package lsp-mode
    :ensure t
    :config
    (require 'lsp-mode)
    (require 'lsp-clients)
    (add-hook 'c++-mode-hook 'lsp)
    (add-hook 'c-mode-hook 'lsp)
    (add-hook 'python-mode-hook 'lsp))

  (use-package lsp-ui
    :ensure t
    :config
    (require 'lsp-ui))

  ;; Open todo.org
  (find-file "~/Dropbox/todo.org")
)
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((python-backend . lsp)
     (javascript-backend . tern)
     (javascript-backend . lsp)
     (go-backend . go-mode)
     (go-backend . lsp)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
