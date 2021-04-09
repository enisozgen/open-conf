# Open Conf

`open-conf` allows you to open files quickly from M-x buffer with given alias.

# Installation

## MELPA

  It will be in the Melpa in next days.

  Just install the `open-conf` package!

## Manual

  Put `open-conf.el` in your load-path, and eval `(require 'open-conf')`. Than define your

## use-package

   Easy try with `use-package`

``` elisp
   (use-package open-conf
     :ensure t
     :config
     (progn
     (defun-open-conf  "bashrc"          "~/.bashrc")
     (defun-open-conf  "zshrc"           "~/.zshrc")
     (defun-open-conf  "etc-hosts-root"  "/sudo:root@localhost:/etc/hosts") ;; Open file with root
     (defun-open-conf  "dnsmasq-root"    "/sudo:root@localhost:/etc/dnsmasq.conf")))
```
