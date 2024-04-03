#!/bin/bash

### Set up vi mode for terminal:
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

pacman -Syu --noconfirm
pacman -S apache bat vim --noconfirm

systemctl enable httpd
systemctl start httpd
systemctl status httpd
