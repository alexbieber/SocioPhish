#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export SOCIOPHISH_ROOT="/data/data/com.termux/files/usr/opt/SocioPhish"
else
	export SOCIOPHISH_ROOT="/usr/opt/SocioPhish"
fi

cd $SOCIOPHISH_ROOT
bash ./sociophisher.sh
