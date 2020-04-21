#!/bin/bash

rm /home/$USER/longmynd/exec_update.sh >/dev/null 2>/dev/null

cd /home/$USER/longmynd

wget https://raw.githubusercontent.com/f4dvk/longmynd/master/exec_update.sh
chmod +x exec_update.sh
/home/$USER/longmynd/exec_update.sh

exit
