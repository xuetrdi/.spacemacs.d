(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     ivy
     (auto-completion :disabled-for org markdown)
     better-defaults
     (syntax-checking :variables syntax-checking-enable-by-default nil)
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t)
     markdown
     dash
     org
     lsp
     (gtags :variables gtags-enable-by-default t)
     (latex :variables
            latex-build-command "LaTex"
            latex-enable-auto-fill t
            latex-enable-folding t)
     (shell :variables shell-default-shell 'eshell)
     lsp
     (python :variables ;;python-backend 'lsp
             python-sort-imports-on-save t
             python-tab-width 2
             python-indent-offset 2)
     swift
     lua
     html
     (javascript :variables javascript-backend 'nil)
     ;; cpp2
     ;; semantic
     ;; cscope
     ;; ycmd
     gpu
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     protobuf
     (cmake :variables cmake-enable-cmake-ide-support t)
     ess
     (julia :variables
            ;; julia-mode-enable-ess t)
            julia-mode-enable-lsp t)
     ;; emoji
     graphviz
     sphinx
     restructuredtext
     yaml
     ;; ycmd
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
                                    org-projectile
                                    org-download
                                    org-timer
                                    org-repo-todo
                                    org-bullets
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
                                    org-plus-contrib
                                    org-brain
                                    org-present
                                    orgit
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
  (setq org-todo-keywords
        '((sequence "NEXT(n!)" "TODO(t)" "DOING(i!)" "HANGUP(h!)" "|" "DONE(d!)" "CANCELED(c!)")))
  (setq org-bullets-bullet-list '("◉" "○" "✸" "✿"))

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

  ;; Ycmd Server
  ;; (set-variable 'ycmd-server-command '("/Users/jinpeng.d/.pyenv/versions/3.6.6/bin/python" "-u" "/Users/jinpeng.d/config/ycmd/ycmd"))
  ;; (set-variable 'ycmd-global-config '("/Users/jinpeng.d/practice/cc/.ycm_extra_conf.py"))
  ;; (set-variable 'ycmd-global-config "/Users/jinpeng.d/config/global_config.py")
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

  ;; C style
  (c-add-style "mystyle"
               '((c-basic-offset . 2)))
  (push '(other . "gnu") c-default-style)
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
 '(package-selected-packages
   (quote
    (xah-math-input yasnippet-snippets yapfify yaml-mode xterm-color ws-butler winum which-key wgrep web-mode web-beautify volatile-highlights uuidgen use-package unfill toc-org tagedit symon swift-mode string-inflection spaceline-all-the-icons smex smeargle slim-mode shell-pop scss-mode sass-mode restart-emacs request rainbow-delimiters pyvenv pytest pyenv-mode py-isort pug-mode protobuf-mode prettier-js popwin pippel pipenv pip-requirements persp-mode pcre2el password-generator paradox overseer org-pomodoro org-mime opencl-mode open-junk-file neotree nameless mwim multi-term move-text monokai-theme mmm-mode markdown-toc magit-svn macrostep lsp-ui lsp-python lsp-julia lsp-javascript-typescript lsp-go lorem-ipsum livid-mode live-py-mode link-hint julia-repl json-navigator json-mode js2-refactor js-doc ivy-yasnippet ivy-xref ivy-rtags ivy-hydra indent-guide importmagic impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make graphviz-dot-mode google-translate google-c-style golden-ratio godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc go-autocomplete gnuplot glsl-mode gitignore-templates gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link ggtags fuzzy font-lock+ flycheck-rtags flycheck-pos-tip flx-ido fill-column-indicator fancy-battery expand-region evil-visualstar evil-visual-mark-mode evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-matchit evil-magit evil-lion evil-iedit-state evil-goggles evil-cleverparens evil-anzu eval-sexp-fu ess-R-data-view eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline disaster diminish define-word dash-at-point cython-mode cuda-mode counsel-gtags counsel-dash counsel-css company-web company-tern company-statistics company-rtags company-lua company-lsp company-go company-c-headers company-auctex company-anaconda column-enforce-mode cmake-mode cmake-ide clang-format centered-cursor-mode cdlatex bind-map auto-yasnippet auto-highlight-symbol auto-complete-rst auto-compile all-the-icons-ivy all-the-icons-dired aggressive-indent ace-window ace-link ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
