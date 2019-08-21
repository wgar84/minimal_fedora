#! /bin/bash

dnf -y install zsh wget rsync openssh-server git util-linux-user
systemctl enable sshd
systemctl start sshd

