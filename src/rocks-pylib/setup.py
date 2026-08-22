#!/usr/bin/env python
#
#

from setuptools import setup, find_packages
import os

version = os.environ.get('ROCKS_VERSION')

# 
# main configuration of distutils
# 
setup(
    name = 'rocks-pylib',
    version = version,
    description = 'Main Rocks python library',
    author = 'Phil Papadopoulos',
    author_email =  'philip.papadopoulos@gmail.com',
#    maintainer = 'Luca Clementi',
#    maintainer_email =  'luca.clementi@gmail.com',
    maintainer = 'J. Eduardo Ramirez',
    maintainer_email =  'juaneduardo.ramirez@upr.edu',
    platforms = ['linux'],
#    url = 'https://rocksclusters.org',
    url = 'https://github.com/jeramirez/rumrocks',
    #long_description = long_description,
    #license = license,
    #main package, most of the code is inside here
    packages = find_packages(),
    #data_files = [('etc', ['etc/rocksrc'])],
    # disable zip installation
    zip_safe = False,
    #the command line called by users    
    scripts=['bin/rocks'],
)
