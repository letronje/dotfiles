(prelude-require-packages '(color-theme
                            ))

(disable-theme 'zenburn)
(require 'color-theme)
(load-file "~/.emacs.d/themes/color-theme-dirac.el")
(color-theme-dirac)

;(global-whitespace-mode)
;(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

(set-default-font "Ubuntu Mono:pixelsize=18:foundry=unknown:weight=normal:slant=normal:width=normal:spacing=100:scalable=true")

(setq prelude-whitespace nil)
(setq prelude-guru nil)
(scroll-bar-mode -1)
;(setq prelude-flyspell nil)

;;(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)

(add-hook 'prog-mode-hook
           (lambda ()
             (when (> (buffer-size) 40000)
               (turn-off-smartparens-mode)
               (turn-off-show-smartparens-mode))))

(global-linum-mode 1)

;; (add-hook 'prog-mode-hook
;;           (lambda ()
;;             (highlight-indentation-mode)))


(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            (setq web-mode-style-padding 2)
            (setq web-mode-script-padding 2)
            (setq web-mode-block-padding 2)))

(setq ag-highlight-search t)
(setq js-indent-level 2)
(setq javascript-indent-level 2)

(add-hook 'php-mode-hook
           (lambda ()
             (setq indent-tabs-mode nil
                   tab-width 2
                   c-basic-offset 2)))

(custom-set-variables '(coffee-tab-width 2))


(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'conf)
