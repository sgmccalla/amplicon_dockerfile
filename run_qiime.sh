#!/bin/bash
#
#
export PATH=/project/miniconda3/bin:$PATH
export PATH="/opt/qiime/bin:$PATH"
source activate qiime1

#print_qiime_config.py -t

# http://fmgdata.kinja.com/using-docker-with-conda-environments-1790901398
/bin/bash -c "source activate qiime1"

PYTHON_PATH=~/bin/python-2.6.1/bin/python

if [ $# = 1 ]
then
    ENV_NAME="$1"
    virtualenv -p $PYTHON_PATH --no-site-packages $ENV_NAME
    activate="`pwd`/$ENV_NAME/bin/activate"

    if [ ! -f "$activate" ]
    then
        echo "ERROR: activate not found at $activate"
        return 1
    fi

    source "$activate"
else
    echo 'Usage: djangoenv ENV_NAME'
fi