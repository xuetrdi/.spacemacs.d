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
                      syntax-checking-enable-by-default nil
                      syntax-checking-enable-tooltips t
                      syntax-checking-use-standard-error-navigation nil
                      syntax-checking-auto-hide-tooltips 2
                      :disabled-for
                      go
                      python
                      )
     emacs-lisp
     scheme
     (git :variables
          git-magit-status-fullscreen t)
     dash
     dap
     (docker :variables
             docker-dockerfile-backend 'lsp)
     (org :variables
          org-projectile-file  "TODOs.org")
     (latex :variables
            latex-build-command "LaTex"
            latex-enable-auto-fill t
            latex-enable-folding t
            latex-enable-magic t)
     lsp
     (python :variables
             python-backend 'lsp
             python-lsp-server 'pyright
             python-test-runner 'pytest
             python-sort-imports-on-save nil
             python-formatter 'yapf
             python-tab-width 2
             python-indent-offset 2)
     imenu-list
     (c-c++ :variables
            c-c++-backend 'lsp-ccls
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-google-style t
            c-c++-enable-google-newline t
            c-c++-lsp-executable (file-truename "/usr/local/bin/ccls")
            c-c++-lsp-sem-highlight-rainbow t
            c-c++-lsp-sem-highlight-method 'font-lock
            c-c++-lsp-cache-dir "/tmp/lsp-ccls"
            )
     (cmake :variables
            cmake-enable-cmake-ide-support t
            ;; cmake-backend 'company-cmake
            cmake-backend 'lsp
            )
     (javascript :variables
                 javascript-backend 'lsp
                 javascript-import-tool 'import-js
                 javascript-lsp-linter nil
                 javascript-fmt-tool 'prettier
                 javascript-fmt-on-save t
                 )
     swift
     rust
     protobuf
     (go :variables
         go-backend 'lsp
         go-tab-width 2
         gofmt-command "goimports"
         gofmt-before-save t
         go-use-golangci-lint t
         godoc-at-point-function 'godoc-gogetdoc)
     ;; (chinese :package youdao-dictionary fcitx
     ;;          :variables chinese-enable-fcitx nil
     ;;          chinese-enable-youdao-dict t)
   )
   dotspacemacs-additional-packages '(
                                      all-the-icons
                                      all-the-icons-dired
                                      all-the-icons-ivy
                                      sr-speedbar
                                      auctex
                                      ;; xah-math-input
                                      lsp-sourcekit
                                      ;; emr
                                      ;; eglot
                                      ;; valign-mode
                                      )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '(vi-tilde-fringe
                                    clean-aindent-mode
                                    chinese-pyim
                                    counsel-projectile
                                    company-quickhelp
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
                                    ;; org-projectile
                                    ;; org-download
                                    ;; org-timer
                                    ;; org-repo-todo
                                    ;; org-plus-contrib
                                    ;; org-brain
                                    ;; org-present
                                    ;; orgit
                                    magit-gh-pulls
                                    magit-gitflow
                                    magithub
                                    git-gutter
                                    git-gutter-fringe
                                    gh-md
                                    smooth-scrolling
                                    eyebrowse
                                    ;; auto-dictionary
                                    flyspell-correct-helm
                                    ivy-purpose
                                    ;; spacemacs-purpose-popwin
                                    ;; window-purpose
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
                         bubbleberry
                         spacemacs-light)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Monaco"
                               :size 18
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
  (setq byte-compile-warnings '(cl-functions))
  (add-to-list 'load-path "~/.emacs.d/private/lisp")
  (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
  )

(defun dotspacemacs/user-config ()
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;UTF-8;;;;;;;;;;;;;;;;;;;;;;;;
  (set-language-environment "UTF-8")
  (set-default-coding-systems 'utf-8)
  (setq locale-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  (setq powerline-default-separator 'utf-8)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EMR;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; (define-key prog-mode-map (kbd "M-RET") 'emr-show-refactor-menu)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;cnfonts;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; (require 'cnfonts)
  ;; (cnfonts-enable)
  ;; (cnfonts-set-spacemacs-fallback-fonts)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;PyRope;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq pymacs-load-path '("/usr/local/build/rope"
                           "/usr/local/build/ropemacs"))
  (defun load-ropemacs ()
    "Load pymacs and ropemacs"
    (interactive)
    (require 'pymacs)
    (autoload 'pymacs-load "pymacs" nil t)
    (autoload 'pymacs-eval "pymacs" nil t)
    (autoload 'pymacs-apply "pymacs")
    (autoload 'pymacs-call "pymacs")
    (autoload 'pymacs-exec "pymacs" nil t)
    (pymacs-load "ropemacs" "rope-")
    (global-set-key [(meta ?/)] 'rope-code-assist)
    ;; Automatically save project python buffers before refactorings
    (setq ropemacs-confirm-saving 'nil)
    )
  (add-hook 'python-mode-hook 'load-ropemacs)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Clojure;;;;;;;;;;;;;;;;;;;;;;;
  ;; (setq clojure-enable-linters t)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Python;;;;;;;;;;;;;;;;;;;;;;;
  (setq python-shell-prompt-detect-failure-warning nil)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Orgmode;;;;;;;;;;;;;;;;;;;;;;
  ;; orgmode preview set image size
  ;; (image-type-available-p 'imagemagick)
  ;; (setq org-image-actual-width '(400))

  ;; 导出文本阻止下划线成下标
  (setq org-export-with-sub-superscripts nil)
  ;; orgmode latex preview
  ;; (startup-latex-with-latex-preview t)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Org-Protocol;;;;;;;;;;;;;;;;;;;;;;;;;
  (defun org-as-mac-chrome-get-frontmost-url ()
  (let ((result
	 (do-applescript
	  (concat
	   "set frontmostApplication to path to frontmost application\n"
	   "tell application \"Google Chrome\"\n"
	   "	set theUrl to get URL of active tab of first window\n"
	   "	set theResult to (get theUrl) & \"::split::\" & (get name of window 1)\n"
	   "end tell\n"
	   "activate application (frontmostApplication as text)\n"
	   "set links to {}\n"
	   "copy theResult to the end of links\n"
	   "return links as string\n"))))
    (replace-regexp-in-string
     "^\"\\|\"$" "" (car (split-string result "[\r\n]+" t)))))

  (defun org-mac-paste-applescript-links (as-link-list)
    "Paste in a list of links from an applescript handler.
     The links are of the form <link>::split::<name>."
    (let* ((noquote-as-link-list
            (if (string-prefix-p "\"" as-link-list)
                (substring as-link-list 1 -1)
              as-link-list))
           (link-list
            (mapcar (lambda (x) (if (string-match "\\`\"\\(.*\\)\"\\'" x)
                                    (setq x (match-string 1 x)))
                      x)
                    (split-string noquote-as-link-list "[\r\n]+")))
           split-link URL description orglink orglink-insert rtn orglink-list)
      (while link-list
        (setq split-link (split-string (pop link-list) "::split::"))
        (setq URL (car split-link))
        (setq description (cadr split-link))
        (when (not (string= URL ""))
          (setq orglink (org-make-link-string URL description))
          (push orglink orglink-list)))
      (setq rtn (mapconcat 'identity orglink-list "\n"))
      (kill-new rtn)
      rtn))

  ;; orgmode todolist
  (with-eval-after-load 'org
    ;; orgmode hotkey, such as <s
    (require 'org-tempo)
    ;; org bullets
    (setq org-superstar-headline-bullets-list '("☯" "☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷"))
    ;; (setq org-bullets-bullet-list '("☯" "☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷"))
    ;; (setq org-bullets-bullet-list '("☯" "☰" "☱" "☲"))
    ;; (setq org-bullets-bullet-list '("᭄" "ஐ" "൬" "က" "რ" "๓"))
    ;; (setq org-bullets-bullet-list '("ஐ" "൬" "က" "ಇ" "დ" "๓"))
    ;; (setq org-bullets-bullet-list '("﹏ૡ" "﹏ૡૡ" "﹏ૡૡૡ" "﹏ૡૡૡૡ" "﹏ૡૡૡૡૡ" "﹏ૡૡૡૡૡૡ"))
    ;; (setq org-bullets-bullet-list '("❀" "♪" "♩" "の"))
    ;; 进入Orgmode后转入cdlatex
    ;; (add-hook 'org-mode-hook 'turn-on-org-cdlatex)
    (plist-put org-format-latex-options :scale 1.5)
    (setq org-todo-keywords
        '((sequence "NEXT(n @/!)" "TODO(t)" "HANG(h @/!)" "WORK(w!)" "LEARN(l!)" "|" "DONE(d!)" "CANCELED(c @/!)")))
    ;; Babel orgmode execute source code
    (org-babel-do-load-languages 'org-babel-load-languages
                                 '((emacs-lisp . t)
                                   (python . t)
                                   (latex . t)
                                   (shell . t)
                                   (C . t)
                                   ;; (clojure . t)
                                   (js . t)
                                   ;; (lua . t)
                                   ;; (org . t)
                                   ;; (scheme . t)
                                   ;; (sql . t)
                                   ;; (css . t)
                                   ;; (julia . t)
                                   ))
    ;; org capture
    (require 'org-capture)
    (global-set-key (kbd "C-c c") 'org-capture)
    (setq org-default-notes-file "~/Dropbox/org/inbox.org")
    (setq org-capture-templates `(
                                  ("c" "Chrome" entry (file+headline "~/Dropbox/org/link.org" "Quick notes")
                                   "* TODO [#C] %?\n %(org-mac-paste-applescript-links (org-as-mac-chrome-get-frontmost-url))\n %i\n %U"
                                   :empty-lines 1)
                                  ("b" "Blog" plain (file ,(concat "~/Dropbox/org/blog/" (format-time-string "%Y-%m-%d.org")))
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

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Agenda;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; 加入日程表文件
  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (push (org-projectile:todo-files) org-agenda-files)
    (setq org-agenda-files (list '("~/Dropbox/org")))
    (setq org-agenda-custom-commands
          '(
            ("w" . "Task")
            ("wa" "Important&Hurry" tags-todo "+PRIORITY=\"A\"")
            ("wb" "Important&NoHurry" tags-todo "-weekly-monthly-daily+PRIORITY=\"B\"")
            ("wc" "NoImportant&Hurry" tags-todo "+PRIORITY=\"C\"")
            ("W" "Weekly Review"
             ((stuck "")
              (tags-todo "work")
              (tags-todo "learn")
              (tags-todo "daily")
              (tags-todo "weekly")
              (tags-todo "code")
              (tags-todo "thing"))))
          ))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Bazel;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (add-hook 'bazel-mode-hook (lambda() (add-hook 'before-save-hook #'bazel-format nil t)))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;All The Icons;;;;;;;;;;;;;;;;;;;;;;
  ;; (require 'all-the-icons)
  (use-package all-the-icons)
  (setq inhibit-compacting-font-caches t)
  (setq neo-theme 'icons)
  (all-the-icons-ivy-setup)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LaTex;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; LaTex 指定完整文档预览
  ;; (add-hook 'doc-view-minor-mode-hook 'auto-revert-mode)
  ;; Acutex
  (setq TeX-view-program-selection '((output-pdf "Skim")))
  (setq TeX-source-correlate-mode t)
  (setq TeX-source-correlate-start-server t)
  (setq TeX-source-correlate-method 'synctex)
  (setq TeX-view-program-list '(("PDF Viewer"
                                 "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))
  ;; (setq org-latex-create-formula-image-program 'dvipng)
  ;; math formatting convert image to PDF file and HTML file.
  ;; (setq org-latex-create-formula-image-program 'imagemagick)
  ;; (setq org-preview-latex-process-alist 'imagemagick)
  ;; LaTex 输出PDF高亮代码, hotkey: C-c C-e l l
  ;; pdflatex -shell-escape -interaction nonstopmode <tex-file>
  ;; (setq org-latex-listings 'minted)
  ;; (add-to-list 'org-latex-packages-alist '("" "minted"))

  ;; xah-math-input, SHIFT + SPACE
  ;; (global-xah-math-input-mode 1)
  ;; (xah-math-input-mode 1)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;C++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (global-set-key [C-M-tab] 'clang-format-region)
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [tab] 'clang-format-buffer))
  ;; 修复系统头文件导入
  (with-eval-after-load 'ccls
    (when (eq system-type 'darwin)
      (setq ccls-initialization-options
            `(:clang ,(list :extraArgs ["-isystem/Library/Developer/CommandLineTools/usr/include/c++/v1"
                                        "-isystem/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include"
                                        "-isystem/usr/local/include"]
                            :resourceDir (string-trim (shell-command-to-string "clang -print-resource-dir")))))))

  (require 'sr-speedbar)

  ;; orgmode中英文对齐
  ;; (when (configuration-layer/layer-usedp 'chinese)
  ;;   (when (and (spacemacs/system-is-mac) window-system)
  ;;     (spacemacs//set-monospaced-font "Monaco" "Hiragino Sans GB" 16 16)))
  ;; orgmode导出中文
  ;; (setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
  ;;                               "xelatex -interaction nonstopmode %f"))
  ;; (setq org-latex-default-packages-alist
  ;;       (remove '("AUTO" "inputenc" t) org-latex-default-packages-alist))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LSP;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (add-hook 'hack-local-variables-hook
            (lambda () (when (derived-mode-p 'python-mode) (lsp))))
  (setq lsp-print-io t)
  ;; (use-package company-lsp
  ;;   :ensure t
  ;;   :config
  ;;   (require 'company-lsp)
  ;;   (push 'company-lsp company-backends)
  ;;   (add-hook 'after-init-hook 'global-company-mode)
  ;;   (add-to-list 'company-lsp-filter-candidates '(digestif . nil))
  ;;   )

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

  (use-package lsp-pyright
    :ensure t
    :hook (python-mode . (lambda ()
                           (require 'lsp-pyright)
                           (lsp))))

  (use-package lsp-sourcekit
    :after lsp-mode
    :config
    (setenv "SOURCEKIT_TOOLCHAIN_PATH" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain")
    (setq lsp-sourcekit-executable (expand-file-name "/usr/local/build/sourcekit-lsp/.build/debug/sourcekit-lsp")))
  (use-package swift-mode
    :hook (swift-mode . (lambda () (lsp))))

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Dap;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (setq dap-auto-configure-features '(session locals controls tooltip))
  (require 'dap-python)
  (require 'dap-gdb-lldb)
  (require 'dap-go)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Todo;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; (find-file "~/Dropbox/org/week.org")
  (find-file "~/Dropbox/org/todo.org")
  (setq default-directory "~/")
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
   '(cnfonts ansi package-build shut-up epl git commander f dash s))
 '(safe-local-variable-values
   '((python-backend . lsp)
     (go-backend . go-mode)
     (go-backend . lsp)
     (js2-mode
      (javascript-backend . lsp))
     (rust-mode
      (rust-backend . lsp)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
