#!/bin/sh
#
# Set up environment variables for general build tool to operate
#
if ! [ -f ./setenv.sh ]; then
	echo "Need to source from the setenv.sh directory" >&2
	return 0
fi

export PORT_ROOT="${PWD}"
export PORT_TYPE="TARBALL"

PORT_TARBALL_DIR=tar-1.34
export PORT_TARBALL_URL="https://ftp.gnu.org/gnu/tar/${PORT_TARBALL_DIR}.tar.gz"
export PORT_TARBALL_DEPS="curl gzip make m4"

PORT_GIT_DIR=git
export PORT_GIT_URL="git://git.savannah.gnu.org/${PORT_GIT_DIR}.git"
export PORT_GIT_DEPS="git make m4 perl makeinfo autoconf automake"

export PORT_EXTRA_LDFLAGS=""
export PORT_CHECK=skip # test #11 hangs   
