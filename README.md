<p align="left"><a href="http://www.gnu.org/licenses/gpl-3.0.txt"><img src="https://img.shields.io/badge/license-GPL_3-green.svg" alt="License GPL 3" /></a>


# `open-conf`

`open-conf` an Emacs package, allows you to open files quickly via **M-x command** with given alias.


# How it works

![example](docs/example.png)


## Installation

### MELPA

  It will be in the Melpa in next days.

### Manual

  Put `open-conf.el` in your load-path, and eval `(require 'open-conf')`.

  Also you have to define your shortcuts via `defun-open-conf` function

  ```elisp
  (defun-open-conf  "bashrc"          "~/.bashrc")
  (defun-open-conf  "zshrc"           "~/.zshrc")
  (defun-open-conf  "etc-hosts-root"  "/sudo:root@localhost:/etc/hosts") ;; Open file with root
  ```

### use-package

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
