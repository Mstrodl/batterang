#!/bin/bash

ln -s "$(pwd)"/batterang.timer ~/.config/systemd/user/
ln -s "$(pwd)"/batterang.service ~/.config/systemd/user/
ln -s "$(pwd)"/batterang.sh ~/.local/bin/batterang
