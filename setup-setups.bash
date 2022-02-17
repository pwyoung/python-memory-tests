#!/bin/bash

sudo apt-get install python2-pip
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
python2 get-pip.py
python2 -m pip install psutil

python3 -m pip install psutil

which python
which python3
which python2
