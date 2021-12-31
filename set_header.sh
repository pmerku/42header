#!/bin/bash
# ./set_header.sh

# Set variables

school = $1
region = $2
if [ -z "$school" ] || [ -z "$region" ]
then
    echo "Please provide arguments: ./set_header.sh [school name] [region]"
    echo "Example: ./set_header.sh codam nl"
    exit
fi

if [ ! -z "$SCHOOL" ]
then
    echo "SCHOOL="$school"" >> ~/.zshrc
    echo "export SCHOOL" >> ~/.zshrc
fi

if [ ! -z "$USER" ]
then
    echo "USER=`/usr/bin/whoami`" >> ~/.zshrc
    echo "export USER" >> ~/.zshrc
fi

if [ ! -z "$GROUP" ]
then
    echo "GROUP=`/usr/bin/id -gn $user`" >> ~/.zshrc
    echo "export GROUP" >> ~/.zshrc
fi

if [ ! -z "$MAIL" ]
then
    echo "MAIL="$USER@student.$school.$region"" >> ~/.zshrc
    echo "export MAIL" >> ~/.zshrc
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp plugin/stdheader.vim ~/.vim/plugin/

source ~/.zshrc
