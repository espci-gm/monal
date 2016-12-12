#!/bin/bash
FROM ubuntu:15.04
MAINTAINER Jean-Luc PLOIX

RUN apt-get update \
    && apt-get install -y \
    python \
    python-dev \
    python-pip \
    python-setuptools \
    --no-install-recommends  \
    && pip install --upgrade pip \
    && apt-get install -y build-essential \
    --no-install-recommends \
    libatlas-base-dev \
    gfortran \
    && pip install --user --no-cache-dir monal  \
    && rm -rf /var/lib/apt/lists/*


