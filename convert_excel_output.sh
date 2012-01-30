#!/bin/bash

rm -f $1
cat _$1 | tr "\r" "\n" | tr "\"" " " > $1
mv _$1 ../_archive/
