#!/usr/bin/env bash

# Enable errexit: Exit if any "simple command" fails
set -e

BINARY_DIR=/usr/local/bin
INSTALL=/usr/bin/install

usage() {
cat <<EOF
Usage: $0 [-b binary_path]

Installs tidy-ports

OPTIONS:
    -b  Path where binary will be installed. Default is $BINARY_DIR
    
EOF
}

while getopts "hb:" OPTION
do
	case $OPTION in
		h) usage
		   exit 0;;
		b) 
		   BINARY_DIR=$OPTARG;;
		t) 
		   TEMPLATES_DIR=$OPTARG;;
		[?])
			usage
			exit 1;;
	esac
done

echo "Installing script to $BINARY_DIR"
"${INSTALL}" -m 755 -S -v -C tidy-ports "${BINARY_DIR}"
