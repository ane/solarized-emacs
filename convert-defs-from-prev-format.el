;; remove this file later
;; does not fully work

;; copy old defs to temp file -> run this fn

(defun solarized-convert-defs-code ()
  "DOCSTRING"
  (interactive)
  (goto-char 0)
  (while (re-search-forward "`" nil t)
    (replace-match "" nil nil))
  (goto-char 0)
  (while (re-search-forward "((,class" nil t)
    (replace-match "" nil nil))
  (goto-char 0)
  (while (re-search-forward "((t" nil t)
    (replace-match "" nil nil))
  (goto-char 0)
  (while (re-search-forward "))))$" nil t)
    (replace-match "))" nil nil))
  (goto-char 0)
  (while (re-search-forward ",solarized-fg" nil t)
    (replace-match "base00" nil nil))
  (goto-char 0)
  (while (re-search-forward ",solarized-bg" nil t)
    (replace-match "base3" nil nil))
  (goto-char 0)
  (while (re-search-forward ",solarized-hl" nil t)
    (replace-match "base2" nil nil))
  (goto-char 0)
  (while (re-search-forward ",solarized-emph" nil t)
    (replace-match "base01" nil nil))
  (goto-char 0)
  (while (re-search-forward ",solarized-comments" nil t)
    (replace-match "base1" nil nil))
  (goto-char 0)
  (while (re-search-forward "," nil t)
    (replace-match "" nil nil))

  )
