#!/bin/bash

#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
# __author__ = "Kurt Pagani <nilqed@gmail.com>"
# __svn_id__ = "$Id: setup 1 2015-11-10 23:43:14Z pagani $"
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#
# fricas_smc Installation  
# =======================
# 1. pip install jupyter
# 2. cd $HOME
# 3. wget fricas-sbcl-local
# 4. tar xzvf fricas-sbcl-local.tar.gz
# 5. cd lib
# 6. git clone https://github.com/nilqed/fricas_jupyter
# 7. cd fricas_jupyter
# 8. export SBCL_HOME=$HOME/lib/sbcl
# 9. export AXIOM=$HOME
# 10. ./install.sh --prefix $HOME # creates iSPAD core -> $HOME/bin
#
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

# go home
cd $HOME

# install latest Jupyter
pip install jupyter

# get fricas-sbcl-local
wget https://github.com/nilqed/fricas_smc/releases/download/untagged-2f3237657281886e9332/fricas-sbcl-local.tar.gz

# unpack fricas-sbcl-local
tar xzvf fricas-sbcl-local.tar.gz

# goto lib
cd lib

# get fricas_jupyter
git clone https://github.com/nilqed/fricas_jupyter

# change to install dir
cd fricas_jupyter

# set env variables
export SBCL_HOME=$HOME/lib/sbcl
export AXIOM=$HOME

# create and install iSPAD kernel
./install.sh --prefix $HOME 

# end install

# tidy up
cd lib/fricas_jupyter
rm -r ./ifricas
rm iSPAD
cd $HOME
rm fricas-sbcl-local.tar.gz

# finished
echo bye!


