#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export SOCIOPHISHER_ROOT="/data/data/com.termux/files/usr/opt/SocioPhisher"
else
	export SOCIOPHISHER_ROOT="/usr/opt/zphisher"
fi

cd $SOCIOPHISHER_ROOT
bash ./sociophisher.sh
