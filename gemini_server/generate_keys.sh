#!/bin/sh

keysdir="$HOME/.gmi.keys"

openssl req -x509 -newkey rsa:4096 -keyout $keysdir/ca-key.rsa -out $keysdir/ca-cert.pem \
	    -days 3650 -nodes -subj "/CN=o72yu1cbgzortw3f.myfritz.net"
