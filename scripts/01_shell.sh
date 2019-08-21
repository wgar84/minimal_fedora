#!/bin/bash

dnf -y install zsh wget rsync openssh-server git util-linux-user tmux
systemctl enable sshd
systemctl start sshd

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
