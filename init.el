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
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t)
     markdown
     org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     python
     ipython-notebook
     c-c++
     html
     (go :variables
         go-tab-width 4
         gofmt-command "goimports"
         gofmt-before-save t)
     ;; git clone private han
     ;;(han :variables
     ;;     han-enable-youdao-dict t
     ;;      han-org-line-spacing 0.2)
     )
   dotspacemacs-additional-packages '(go-autocomplete
                                      ;;youdao-dictionary
                                      ;;chinese-pyim
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
                               :powerline-scale 1.1)
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
   dotspacemacs-line-numbers t 
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
   (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
   (setq exec-path-from-shell-variables '("PATH"
                                          "GOPATH"
                                          "GOROOT"
                                          "GOBIN"))
  )

(defun dotspacemacs/user-config ()
  ;;UTF-8
  (set-language-environment "UTF-8")
  (set-default-coding-systems 'utf-8)
  (setq locale-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)

  ;; go-complete
  (require 'go-autocomplete)
  (require 'auto-complete-config)
  (ac-config-default)
  (setq gofmt-command "goimports")

  ;; chinese
  ;;(spacemacs//set-monospaced-font "Monaco" "BabelStone Han" 16 14)
  
  ;;python anaconda-mode
  (setq socks-server '("Default server" "127.0.0.1" 1080 5))
  )

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
)
