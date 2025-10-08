;; -*- lexical-binding: t; -*-
;; Author: Raoul Comninos

;;;;;;;;;;;;;;;;

(use-package emacs
  :ensure nil  ;; Built-in
  :bind
  (("M-?" . my-add-slashes)
   ("M-_" . my-add-underscores)
   ("M-*" . my-add-asterisks)
   ("M-+" . my-add-equals)
   ("M-\"" . my-add-quotes)
   ("M-8" . my-add-double-asterisks)
   ("M-~" . my-add-double-tildes)
   ("M-'" . my-add-backticks)
   ("M-1" . jump-out-of-pair))
  :config
  (defun my-add-slashes (beg end)
    "Add slashes around a region of text."
    (interactive "r")
    (save-excursion
      (goto-char end)
      (insert "\/")
      (goto-char beg)
      (insert "\/")))
  
  (defun my-add-underscores (beg end)
    "Add underscores around a region of text."
    (interactive "r")
    (save-excursion
      (goto-char end) 
      (insert "_") 
      (goto-char beg) 
      (insert "_")))
  
  (defun my-add-asterisks (beg end)
    "Add asterisks around a region of text."
    (interactive "r")
    (save-excursion
      (goto-char end)
      (insert "*")
      (goto-char beg)
      (insert "*")))
  
  (defun my-add-equals (beg end)
    "Add equals signs around a region of text."
    (interactive "r")
    (save-excursion
      (goto-char end)
      (insert "=")
      (goto-char beg)
      (insert "=")))
  
  (defun my-add-quotes (beg end)
    "Add double quotes around a region of text."
    (interactive "r")
    (save-excursion
      (goto-char end)
      (insert "\"")
      (goto-char beg)
      (insert "\"")))

  (defun my-add-double-asterisks (beg end)
    "Add double asterisks around a region of text for markdown bold."
    (interactive "r")
    (save-excursion
      (goto-char end)
      (insert "**")
      (goto-char beg)
      (insert "**")))

  (defun my-add-double-tildes (beg end)
    "Add double tildes around a region of text for markdown strikethrough."
    (interactive "r")
    (save-excursion
      (goto-char end)
      (insert "~~")
      (goto-char beg)
      (insert "~~")))

  (defun my-add-backticks (beg end)
    "Add backticks around a region of text for markdown inline code."
    (interactive "r")
    (save-excursion
      (goto-char end)
      (insert "`")
      (goto-char beg)
      (insert "`")))

  (defun jump-out-of-pair ()
    "Jump outside of the closest pair delimiter (parenthesis, bracket, quote, etc.)."
    (interactive)
    (let ((found (search-forward-regexp "[])}\"'`*=~]" nil t)))
      (when found
        (cond ((or (looking-back "\\*\\*" 2)
                   (looking-back "~~" 2)
                   (looking-back "``" 2)
                   (looking-back "''" 2)
                   (looking-back "==" 2))
               (forward-char))
              (t (forward-char 0)))))))

(provide 'asterisk)
