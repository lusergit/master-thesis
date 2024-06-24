;;; utils.el --- Utilities for the thesis -*- lexical-binding: t -*-

;; Author: lUserGit
;; Maintainer: lUserGit
;; Version: 0.01
;; Package-Requires: (nil)
;; Homepage: homepage
;; Keywords: keywords


;; This file is not part of GNU Emacs

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.


;;; Commentary:

;; Some ultilites and function for a better *.tex expreience writing the thesis

;;; Code:

(defun compile-tags ()
  "Compile etags for the current project."
  (interactive)
  (compile "find . -name \"*.[chCH]\" -print | etags -"))

(defun lz/thesis-spellcheck-all()
  "Find all .tex files in the ~/tesi/ directory and run ispell on all of them."
  (interactive)
  (let* ((folder "~/tesi/")
	 (regexp "\\.tex$")
	 (files (directory-files-recursively  folder regexp)))
    (dolist (file files)
      (save-window-excursion
	(with-current-buffer (find-file file)
	  (ispell-buffer))))))

(provide 'utils)

;;; utils.el ends here
