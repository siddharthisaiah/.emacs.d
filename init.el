;: MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-enabled-themes '(jetbrains-darcula))
 '(custom-safe-themes
   '("b8c59f875f345291cfdcf0177cd08af7d76a7e10b9f2f7c766475079363827cc" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(package-selected-packages
   '(js-react-redux-yasnippets all-the-icons angular-mode angular-snippets js2-mode nov paredit ac-cider all-the-icons-dired all-the-icons-ibuffer all-the-icons-ivy all-the-icons-ivy-rich anaconda-mode elpy jedi jetbrains-darcula-theme php-mode docker-compose-mode dockerfile-mode slime emmet-mode web-mode lorem-ipsum yasnippet-snippets fira-code-mode magit counsel ivy neotree projectile restclient spacemacs-theme swiper restart-emacs exec-path-from-shell))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#292b2e" :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "nil" :family "Fira Code")))))

;; start emacs with the window/frame maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))


;; disable the annoying bell sounds
(setq ring-bell-function 'ignore)


;; initialize exec-path-from-shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; Cursor type - bar, 2 pixels wide
(setq-default cursor-type '(bar . 2))


;; enable ivy mode
(ivy-mode 1)


;; bind C-s to swiper iSearch
(global-set-key "\C-s" 'swiper)


;; change all prompts to y or n
(fset 'yes-or-no-p 'y-or-n-p)


;; Projectile keybindings
(projectile-mode +1)
(counsel-projectile-mode)
;;(define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)


;; set tab -> spaces
(setq tab-width 4)
(setq-default indent-tabs-mode nil)
(put 'downcase-region 'disabled nil)

;; Steel Bank Common Lisp
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program (executable-find "sbcl"))


;; bind C-x C-b to ibuffer
(global-set-key "\C-x\C-b" 'ibuffer)


;; Hide Dired details
(add-hook 'dired-mode-hook
          (lambda()
            (dired-hide-details-mode)))

;; all the icons for neo-tree
(setq inhibit-compacting-font-caches t)
(setq neo-theme 'icons)
