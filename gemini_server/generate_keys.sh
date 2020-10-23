#!/bin/sh

keysdir="$HOME/.gmi.keys"

openssl req -new -x509 -newkey rsa:2048 -sha256 -nodes -keyout $keysdir/ca-key.rsa -out $keysdir/ca-cert.pem \
	    -days 3650 -config $HOME/amadeus/gemini_server/ssl.conf
