#!/bin/sh

ACCELIO_VERSION=1.6
ACCELIO_TAR=v$ACCELIO_VERSION.tar.gz
DESTDIR=~/rpmbuild/SOURCES/

git archive --format=tar --prefix=accelio-$ACCELIO_VERSION/ HEAD | gzip > $ACCELIO_TAR
test -d $DESTDIR && \
	cp -va $ACCELIO_TAR $DESTDIR && \
	echo "Succesfully finished."
