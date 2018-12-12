#!/bin/bash

mv ~/.vimrc ~/.vimrc.backup && \
rm -rf ~/.vim/*  && \
echo "uninstall sucess!"  || echo "uninstall error!"