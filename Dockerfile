#!/bin/bash
FROM ubuntu:15.04
MAINTAINER Jean-Luc PLOIX

RUN apt-get update \
    && apt-get install -y \
    --no-install-recommends \
    python \
    python-dev \
    python-pip \
    python-setuptools
RUN pip install --upgrade pip \
RUN apt-get install -y \ 
    --no-install-recommends \
    #build-essential \
    #libatlas-base-dev \
    gfortran
RUN pip install --user --no-cache-dir monal
RUN rm -rf /var/lib/apt/lists/*


