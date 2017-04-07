#!/bin/sh

sudo sh -c "cp ${HOME}/configs/tools/repo /usr/bin -av"

echo "" >> ${HOME}/.bashrc
echo "export REPO_URL=git@scm-gitlab:ti-glsdk/git-repo" >> ${HOME}/.bashrc
