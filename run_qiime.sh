#!/bin/bash
#
#
export PATH=/project/miniconda3/bin:$PATH
export PATH="/opt/qiime/bin:$PATH"
source activate qiime1

'/bin/bash -c "source activate qiime1"'

#print_qiime_config.py -t