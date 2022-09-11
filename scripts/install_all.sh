#!/bin/bash

# Copyright 2019-2022 Andrew Clemons, Wellington New Zealand
# Copyright 2022 Andrew Clemons, Tokyo Japan
# All rights reserved.
#
# Redistribution and use of this script, with or without modification, is
# permitted provided that the following conditions are met:
#
# 1. Redistributions of this script must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS OR IMPLIED
#  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
#  EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

set -e
set -o pipefail

configure_current() {
  # PRETTY_NAME="Slackware 14.2 arm (post 14.2 -current)"
  if sed -n '/^PRETTY_NAME/p' /etc/os-release | grep post > /dev/null 2>&1 ; then
    touch /var/lib/slackpkg/current
  fi
}

configure_slackpkg() {
  local mirror_base="$1"

  # TODO - very fragile - arm has ARCH set in the slackpkg config
  if grep ^ARCH /etc/slackpkg/slackpkg.conf > /dev/null 2>&1 ; then
    mirror="$mirror_base/slackwarearm-15.0/"
  else
    if [ -e /usr/lib64 ] ; then
      mirror="$mirror_base/slackware64-15.0/"
    else
      mirror="$mirror_base/slackware-15.0/"
    fi
  fi

  if ! grep ^ARCH /etc/slackpkg/slackpkg.conf > /dev/null 2>&1 ; then
    if [ ! -e /usr/lib64 ] ; then
      sed -i 's/^#ARCH.*$/ARCH=i386/' /etc/slackpkg/slackpkg.conf
    fi
  fi

  sed -i 's/^\(WGETFLAGS="\)\(.*\)$/\1--quiet \2/' /etc/slackpkg/slackpkg.conf

  if [ -n "$mirror" ] ; then
    echo "Configuring mirror to: $mirror"

    sed -i 's/^h/#xxxh/' /etc/slackpkg/mirrors
    sed -i "/$(printf '%s\n' "$mirror" | sed -e 's/[]\/$*.^[]/\\&/g')/d" /etc/slackpkg/mirrors
    echo "$mirror" >> /etc/slackpkg/mirrors
  fi

  sed -i '/^PRIORITY/s/testing //' /etc/slackpkg/slackpkg.conf
}

# terse package install for installpkg
export TERSE=0

mirror_base="$1"

configure_current
configure_slackpkg "$mirror_base"

slackpkg -default_answer=yes -batch=on update

EXIT_CODE=0
slackpkg -default_answer=yes -batch=on upgrade slackpkg || EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ] && [ $EXIT_CODE -ne 20 ] ; then
  exit $EXIT_CODE
fi

configure_current

if [ -e /etc/slackpkg/slackpkg.conf.new ] ; then
  mv /etc/slackpkg/slackpkg.conf.new /etc/slackpkg/slackpkg.conf

  if [ -e /etc/slackpkg/mirrors.new ] ; then
    mv /etc/slackpkg/mirrors.new /etc/slackpkg/mirrors
  fi

  if [ -e /etc/slackpkg/blacklist.new ] ; then
    mv /etc/slackpkg/blacklist.new /etc/slackpkg/blacklist
  fi

  configure_slackpkg "$mirror_base"
fi

# slackpkg tty fixes
# shellcheck disable=SC2016
sed -i 's,SIZE=\$( stty size )$,SIZE=$( [[ $- != *i* ]] \&\& stty size || echo "0 0"),' /usr/libexec/slackpkg/functions.d/post-functions.sh

slackpkg -default_answer=yes -batch=on update

if sed -n '/^PRETTY_NAME/p' /etc/os-release | grep post > /dev/null 2>&1 ; then
  EXIT_CODE=0
  slackpkg -default_answer=yes -batch=on install aaa_glibc-solibs aaa_libraries pcre2 libpsl || EXIT_CODE=$?

  if [ $EXIT_CODE -ne 0 ] && [ $EXIT_CODE -ne 20 ] ; then
    exit $EXIT_CODE
  fi
fi

EXIT_CODE=0
slackpkg -default_answer=yes -batch=on upgrade-all || EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ] && [ $EXIT_CODE -ne 20 ] ; then
  exit $EXIT_CODE
fi

slackpkg -default_answer=yes -batch=on install a/* ap/* d/* e/* f/* k/* kde/* l/* n/* t/* tcl/* x/* xap/* xfce/* y/* || EXIT_CODE=$?
# first invocation can fail before everything is installed
slackpkg -default_answer=yes -batch=on install a/* ap/* d/* e/* f/* k/* kde/* l/* n/* t/* tcl/* x/* xap/* xfce/* y/* || EXIT_CODE=$?
EXIT_CODE=0
slackpkg -default_answer=yes -batch=on install-new || EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ] && [ $EXIT_CODE -ne 20 ] ; then
  exit $EXIT_CODE
fi

EXIT_CODE=0
slackpkg -default_answer=yes -batch=on upgrade-all || EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ] && [ $EXIT_CODE -ne 20 ] ; then
  exit $EXIT_CODE
fi

EXIT_CODE=0
slackpkg -default_answer=yes -batch=on clean-system || EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ] && [ $EXIT_CODE -ne 20 ] ; then
  exit $EXIT_CODE
fi

EXIT_CODE=0
slackpkg -default_answer=yes -batch=on install rust || EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ] && [ $EXIT_CODE -ne 20 ] ; then
  exit $EXIT_CODE
fi

# seems this is a problem sometimes.
EXIT_CODE=0
slackpkg -default_answer=yes -batch=on reinstall ca-certificates || EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ] && [ $EXIT_CODE -ne 20 ] ; then
  exit $EXIT_CODE
fi

find / -xdev -type f -name "*.new" -exec rename ".new" "" {} +

rm -rf /var/cache/packages/*
rm -rf /var/lib/slackpkg/*

configure_current

# slackpkg tty fixes
# shellcheck disable=SC2016
sed -i 's,SIZE=\$( \[\[ \$- != \*i\* \]\] \&\& stty size || echo "0 0"),SIZE=$( stty size ),' /usr/libexec/slackpkg/functions.d/post-functions.sh

if [ -n "$mirror_base" ] ; then
  sed -i '$d' /etc/slackpkg/mirrors
  sed -i 's/^#xxxh/h/' /etc/slackpkg/mirrors
fi

(
  cd /etc
  ln -sf /usr/share/zoneinfo/Etc/GMT localtime
)
