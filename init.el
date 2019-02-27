(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     ivy
     auto-completion
     better-defaults
     (syntax-checking :variables syntax-checking-enable-by-default t)
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t)
     markdown
     dash
     org
     ;; (org :variables org-projectile-file "TODOs.org")
     gnus
     (gtags :variables gtags-enable-by-default t)
     (latex :variables
            latex-build-command "LaTex"
            latex-enable-auto-fill t
            latex-enable-folding t)
     (shell :variables shell-default-shell 'zsh)
     lsp
     (python :variables ;;python-backend 'lsp
             python-sort-imports-on-save t
             python-tab-width 2
             python-indent-offset 2)
     swift
     lua
     html
     (javascript :variables javascript-backend 'nil)
     gpu
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     (cmake :variables cmake-enable-cmake-ide-support t)
     ess
     (julia :variables
            ;; julia-mode-enable-ess t)
            julia-mode-enable-lsp t)
     ;; emoji
     graphviz
     plantuml
     ;; sphinx
     yaml
     protobuf
     csv
     (go :variables
         go-tab-width 2
         gofmt-command "goimports"
         gofmt-before-save t)
   )
   dotspacemacs-additional-packages '(go-autocomplete
                                      all-the-icons
                                      all-the-icons-dired
                                      all-the-icons-ivy
                                      ;; julia-repl
                                      ;; julia-mode
                                      ;; ess
                                      ;; cpputils-cmake
                                      cdlatex
                                      auctex
                                      xah-math-input
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
                                    ;; org-bullets
                                    org-plus-contrib
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
   dotspacemacs-themes '(monokai
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
  ;; (add-hook 'julia-mode-hook 'julia-repl-mode)

  ;; orgmode todolist
  (with-eval-after-load 'org
    (setq org-todo-keywords
        '((sequence "NEXT(n!)" "TODO(t)" "DOING(i!)" "HANGUP(h!)" "WORK" "LEARN" "|" "DONE(d!)" "CANCELED(c!)")))
    (setq org-bullets-bullet-list '("◉" "○" "✸" "✿"))
    (org-babel-do-load-languages 'org-babel-load-languages
                                 '((emacs-lisp . t)
                                   (plantuml . t)
                                   (C . t)))
    )

  ;; plantuml
  (setq org-plantuml-jar-path (expand-file-name "~/plantuml.jar"))

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
  (add-to-list 'load-path "/Library/TeX/texbin")
  (add-hook 'doc-view-minor-mode-hook 'auto-revert-mode)

  ;; Ycmd Server
  ;; (set-variable 'ycmd-server-command '("/Users/jinpeng.d/.pyenv/versions/3.6.6/bin/python" "-u" "/Users/jinpeng.d/config/ycmd/ycmd"))
  ;; (set-variable 'ycmd-global-config '("/Users/jinpeng.d/practice/cc/.ycm_extra_conf.py"))
  ;; Ycmd global configure project/path/.ycmd_extra_conf.py or .clang_complte
  ;; global_conf.py 补充 compile_commands.json
  ;; (add-hook 'c-mode-hook 'ycmd-mode)
  ;; (add-hook 'python-mode-hook 'ycmd-mode)
  ;; (add-hook 'go-mode-hook 'ycmd-mode)

  ;; xah-math-input
  (global-xah-math-input-mode 1)
  (xah-math-input-mode 1)

  ;; C++
  (global-set-key [C-M-tab] 'clang-format-region)
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [tab] 'clang-format-buffer))

  (c-add-style "mystyle"
               '((c-basic-offset . 2)))
  (push '(other . "gnu") c-default-style)

  ;; Open todo.org
  (find-file "~/todo.org")
  ;; ;; Agenda
  ;; (with-eval-after-load 'org-agenda
  ;;   (require 'org-projectile)
  ;;   (push (org-projectile:"todo.org") org-agenda-files))
  ;; (devar org-agenda-dir "" "gtd org files location")
  ;; (setq-default org-agenda-dir "~/org")
  ;; (setq org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir))
  ;; (setq org-agenda-file-gtd (expand-file-name "gtd.org" org-agenda-dir))
  ;; (setq org-agenda-journal (expand-file-name "journal.org" org-agenda-dir))
  ;; (setq org-file-code-snippet (expand-file-name "snippet.org" org-agenda-dir))
  ;; (setq org-default-notes-file (expand-file-name "gtd.org" org-agenda-dir))
  ;; (setq org-agenda-files (list org-agenda-dir))
  ;; (with-eval-after-load 'org-agenda
  ;;   (define-key org-agenda-mode-map (kbd "P") 'org-pomodoro)
  ;;   (spacemacs/set-leader-keys-for-major-mode 'org-agenda-mode
  ;;     "" 'spacemacs/org-agenda-transient-state/body))
  ;; capture template
  ;; (setq org-capture-templates
  ;;       '(("t" "Todo" entry (file+headline org-agenda-file-gtd "Workspace")
  ;;          "* TODO [#B]%?\n %i\n"
  ;;          :empty-lines 1)
  ;;         ("n" "notes" entry (file+headline org-agenda-file-note "Quick notes")
  ;;          "*%?\n %i\n %U"
  ;;          :empty-lines 1)
  ;;         ("b" "Blog ldeas" entry (file+headline org-agenda-file-note "Blog ldeas")
  ;;          "*TOTO[#B]%?\n %i\n %U"
  ;;          :empty-lines 1)
  ;;         ("s" "Code Snippet" entry (file org-agenda-file-code-snippet)
  ;;          "*%?\t%^g\n#+BEGIN_SRC %^{language}\n\n#+END_SRC")
  ;;         ("w" "work" entry (file+headline org-agenda-file-gtd "cmi")
  ;;          "*TODO[#A]%?\n %i\n %U"
  ;;          :empty-lines 1)
  ;;         ;; ("c" "Chrome" entry (file+headline org-agenda-file-note "Quick notes")
  ;;         ;;  "*TODO[#C]%?\n %()")))
  ;;         ))
  ;; (setq org-agenda-custom-commands
  ;;       '(
  ;;         ("w" "任务安排")
  ;;         ("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
  ;;         ("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")))
)
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
)
