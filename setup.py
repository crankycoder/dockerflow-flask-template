#!/usr/bin/env python

from setuptools import find_packages, setup

setup(
    name='dockerflow-flask',
    version='0.1',
    author='Mozilla Foundation',
    author_email='vng@mozilla.com',
    url='https://github.com/crankycoder/dockerflow-flask-template',
    packages=find_packages(exclude=['tests', 'tests/*']),
)
