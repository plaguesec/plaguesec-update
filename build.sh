#!/bin/bash

build(){


	cp plaguesec-update.nim tmp.nim
	nim c -d:ssl --passC:"-fPIE -Wformat -Wformat-security -D_FORTIFY_SOURCE=2 -O1 -fstack-protector-all" --passL:"-fPIE -pie -z relro -z now" tmp.nim
	mv tmp plaguesec-update
	rm tmp.nim
}

build
