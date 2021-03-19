#!/bin/bash
set -e

DIR=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)

ln -sfv ${DIR}/tmux.conf ${HOME}/.tmux.conf

. ${DIR}/vim_runtime/install_vimrc.sh

echo 'for i in '${DIR}'/profile.d/*.sh ; do
  if [ -r "$i" ]; then
    . $i
  fi
done' > ${HOME}/.bash_aliases

echo "Installed the bashrc configuration successfully!"
