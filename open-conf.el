;;; open-conf.el --- Open files via M-x buffer

;; Copyright (C) 2021 Enis OEZGEN

;; Author: Enis OEZGEN <mail@enisozgen.com>
;; Created: 08 Apr 2021
;; Version: 1.0
;; Keywords: convenience
;; URL: https://github.com/enisozgen/open-conf

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; open-conf allows you to open files quickly via M-x command with given alias.
;; Example:
;; (defun-open-conf "bashrc" "~/.bashrc")

;; Please see README.md from the same repository for documentation.

;;; Code:

(defmacro defun-open-conf (config-name filepath)
  "Open conf macro"
  `(defun ,(intern (format "open-conf-%s" config-name)) ()
     ,(format "Open %s: \"%s\"" config-name filepath)
     (interactive)
     (open-conf ,filepath)))

(defun open-conf (filepath)
  (switch-to-buffer
   (find-file-noselect filepath)))

(provide 'open-conf)

;;; open-conf.el ends here
