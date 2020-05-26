;;; scimax-evil.el --- Evil mode for scimax

;;; Commentary:
;;

;;; Code:

(use-package evil
  :straight t
  :init
  (setq evil-want-integration nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :straight t)
(use-package general
  :straight t
  :config
  (setq general-override-states '(emacs
				  hybrid
				  normal
				  visual
				  motion
				  operator
				  replace))
  (general-override-mode)
  (general-define-key
   :states '(normal visual motion)
   :keymaps 'override
   "SPC" 'scimax/body))


(provide 'scimax-evil)
;;; scimax-evil.el ends here
