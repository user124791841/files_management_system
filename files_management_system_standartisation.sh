#!/bin/bash

find $HOME/Downloads/ -type f -exec chmod 600 {} +

ls -l -R $HOME/Downloads/ | grep rwx-

find $HOME/Documents/ -type f -exec chmod 600 {} +

ls -l -R $HOME/Documents/ | grep rwx-

find $HOME/Archive/ -type f -exec chmod 400 {} +

ls -l -R $HOME/Archive/ | grep rwx-

echo 'Export needs to be drwx------.'

find $HOME/Downloads -type f -exec rename -a ' ' '_' {} +

ls $HOME/Downloads | grep ' '

echo 'No changes?'
