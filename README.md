# fricas_smc

FriCAS+Jupyter Installation on SCM (binary distribution) 

##### Versions

    FriCAS .... 1.2.7
    SBCL ...... 1.2.6
    iSPAD ..... 0.9.5

This repository only contains the tools in order to install the 
[`iSPAD`](https://bitbucket.org/kfp/ispad) Jupyter kernel
and [`FriCAS`](https://github.com/fricas/fricas) on 
[`SageMathCloud`](https://cloud.sagemath.com/).

## Quick Install

* Login to [SCM](https://cloud.sagemath.com/)
* Create a **fresh** project and do **open** a terminal <sup>[1](#footnote1)</sup>
* `git clone https://github.com/nilqed/fricas_smc.git`
* `cd fricas_smc` and run `./setup.sh`.

## Tests
##### Terminal

    $ fricas -h .......... Fricas help
    $ sbcl --version ..... SBCL 1.2.vv

##### Notebook

    Menu: Files -> fricas_smc -> tests
    ... click on test.ipynb 
    ... wait for kernel ready then: Cell -> Run all
    ..
    New notebook -> change kernel "FriCAS"
    


## Manual Installation
If you want to see what is going on then you can perform the instructions in the
`setup.sh` script step by step:

* `pip install jupyter`
* `cd $HOME`
* `wget` [fricas-sbcl-local](https://github.com/nilqed/fricas_smc/releases/download/v0.9.5/fricas-sbcl-local.tar.gz) 
* `tar xzvf fricas-sbcl-local.tar.gz`
* `cd lib`
* `git clone https://github.com/nilqed/fricas_jupyter`
* `cd fricas_jupyter`
* `export SBCL_HOME=$HOME/lib/sbcl`
* `export AXIOM=$HOME`
* `./install.sh --prefix $HOME #` *creates iSPAD core* `-> $HOME/bin`

##### Optional
The script will tidy up (removing unused components):


Cleaning:

* `cd lib/fricas_jupyter`
* `rm -r ./ifricas`
* `rm iSPAD`
* `cd $HOME`
* `rm fricas-sbcl-local.tar.gz`

The folder `fricas_smc` can also be deleted (preferably after testing).


CodeMirror mode/lexer:

* to be done


__

<a name="footnote1">1</a>: Assure you are in `$HOME` and that it is empty
(except the terminal file).