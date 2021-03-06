;; Turn off the default whitespace-mode (from prelude)
;; `whitespace-mode` turns on visualizations for whitespaces
;; since they aren't apparent by default.
(setq prelude-whitespace nil)

(setq my-tab-width 2)
'(c-basic-offset my-tab-width)
'(js2-basic-offset my-tab-width)
'(standard-indent my-tab-width)
'(tab-width my-tab-width)
'(web-mode-attr-indent-offset my-tab-width)
'(web-mode-code-indent-offset my-tab-width)
'(web-mode-css-indent-offset my-tab-width)

(require 'tty-format)

;; M-x display-ansi-colors to explicitly decode ANSI color escape sequences
(defun display-ansi-colors ()
  (interactive)
  (format-decode-buffer 'ansi-colors))

;; decode ANSI color escape sequences for *.txt or README files
;; (add-hook 'find-file-hooks 'tty-format-guess)

;; decode ANSI color escape sequences for .log files
;; (add-to-list 'auto-mode-alist '("\\.log\\'" . display-ansi-colors))

(require 'pp-c-l)
(setq pp^L-^L-string
      "                                                           ")
(pretty-control-l-mode 1)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Add line numbers only to programming modes and add space-buffer
;; between the line number and the buffer content
(setq linum-format "%d ")
(add-hook 'prog-mode-hook 'linum-mode)

;;; Treat all themes as safe
(setq custom-safe-themes t)

;;; Shortcut for magit-status
(global-set-key (kbd "C-c C-x g") 'magit-status)

;;; Set org-mode to truncate lines and word-wrap by default
(add-hook 'org-mode-hook (lambda () (visual-line-mode t)))

;;;;;;;;;;; BELOW SET BY EMACS ;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#000000"))
 '(c-basic-offset 2)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(fci-rule-color "#424242")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(markdown-command
   "/usr/local/bin/pandoc -c file:///Users/avery/dev/me.config/prelude/personal/github-pandoc.css --from markdown_github -t html5 --mathjax --highlight-style pygments --standalone")
 '(org-agenda-files (quote ("~/Dropbox/TODO.org")))
 '(org-export-backends (quote (ascii html icalendar latex md)))
 '(org-hide-leading-stars t)
 '(org-startup-folded (quote content))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (yaml-mode zop-to-char zenburn-theme yari xterm-color which-key web-mode web-beautify volatile-highlights vkill undo-tree solarized-theme smex smartrep smartparens smart-mode-line scss-mode ruby-tools rainbow-mode rainbow-delimiters puppet-mode pp-c-l php-mode ov org operate-on-number multiple-cursors move-text markdown-mode magit json-mode js2-mode inf-ruby imenu-anywhere ido-ubiquitous helm-projectile guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck flx-ido expand-region exec-path-from-shell elisp-slime-nav easy-kill discover-my-major diminish diff-hl csv-mode crux company browse-kill-ring beacon anzu ace-window)))
 '(ruby-insert-encoding-magic-comment nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "#e78c45")
     (60 . "#e7c547")
     (80 . "#b9ca4a")
     (100 . "#70c0b1")
     (120 . "#7aa6da")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "#e78c45")
     (200 . "#e7c547")
     (220 . "#b9ca4a")
     (240 . "#70c0b1")
     (260 . "#7aa6da")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "#e78c45")
     (340 . "#e7c547")
     (360 . "#b9ca4a"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

