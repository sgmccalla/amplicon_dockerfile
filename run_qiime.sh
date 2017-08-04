#!/bin/bash
#
#
export PATH=/project/miniconda3/bin:$PATH
export PATH="/opt/qiime/bin:$PATH"
source activate qiime1

#print_qiime_config.py -t

# http://fmgdata.kinja.com/using-docker-with-conda-environments-1790901398
/bin/bash -c "source activate qiime1"

PYTHON_PATH=/opt/conda/bin/python

/usr/bin/easy_install virtualenv

if [ $# = 1 ]
then
    ENV_NAME="$1"
    virtualenv -p $PYTHON_PATH $ENV_NAME
    activate="/opt/conda/envs/qiime1/bin/activate"

    if [ ! -f "$activate" ]
    then
        echo "ERROR: activate not found at $activate"
        return 1
    fi

    source "$activate"
else
    echo 'Usage: nuthatch ENV_NAME'
fi