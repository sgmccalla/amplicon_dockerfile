#!/usr/bin/python
#
#
#
import sys, os

# http://fmgdata.kinja.com/using-docker-with-conda-environments-1790901398
#os.system('/bin/bash -c "source activate qiime1 && exec python /home/smccalla/step1.py GAIM_15*_R1_001.fastq.gz GAIM_15*_R2_001.fastq.gz GAIM_15 160408_NB501144_0002_AHMFMNBGXX Loons_Long_Tailed"')
os.system('/bin/bash -c "source activate qiime1"')