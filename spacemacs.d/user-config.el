;; (spacemacs/toggle-debug-on-error-on)

;; Personal Information Configuration
(setq user-full-name "WinnoChan")
(setq user-email-address "winnochan@163.com")

;; projectile
(setq projectile-enable-caching t)
;; (setq projectile-indexing-method 'hybrid)

;; 多行移动
;; (global-set-key (kbd "C-M-n")
;;                 (lambda () (interactive) (next-line 7)))
;; (global-set-key (kbd "C-M-p")
;;                 (lambda () (interactive) (previous-line 7)))
(global-set-key (kbd "M-n")
                (lambda () (interactive) (next-line 5)))
(global-set-key (kbd "M-p")
                (lambda () (interactive) (previous-line 5)))

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-z") 'redo)

;; 设置单行的复制以剪切
(defadvice kill-ring-save (before slickcopy activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))
(defadvice kill-region (before slickcut activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

;; winum
;; (setq winum-scope 'frame-local)

;; hungry-mode
(spacemacs/toggle-hungry-delete-on)
(spacemacs/toggle-whitespace-cleanup-on)

;; (when (require 'so-long nil :noerror)
;;   (so-long-enable))

;; (setq company-minimum-prefix-length 2)
;; (setq company-show-numbers t)

(spacemacs/toggle-indent-guide-globally-on)
;; (set-face-background 'indent-guide-face "dimgray")

;; turn off highlight current line
(spacemacs/toggle-highlight-current-line-globally-on)
(spacemacs/toggle-automatic-symbol-highlight-on)

(spacemacs/toggle-smartparens-globally-on)

;; fix flycheck
(eval-after-load 'flycheck
  '(setcar (memq 'source-inplace (flycheck-checker-get 'typescript-tslint 'command)) 'source-original))

;; (setq company-tooltip-align-annotations t)
;; (setq tide-tsserver-process-environment '("TSS_LOG=-level verbose -file /tmp/tss.log"))

(push '("^\\*Cargo.*\\*$"
        :regexp t
        :noselect t
        :height 0.4
        :position bottom
        )
      popwin:special-display-config)

(push '("^\\*rustfmt\\*$"
        :regexp t
        :noselect t
        :height 0.4
        :position bottom
        )
      popwin:special-display-config)

(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/.cache/undo-tree/")))

(provide 'user-config)
