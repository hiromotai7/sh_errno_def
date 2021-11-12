#!/bin/bash

# A simple sample script for using ERRNO in bash
# SPDX-License-Identifier: LGPL-2.1-or-later

#
# usage:
#
# You can use EINVAL in bash script, like that
# 
#   . errno.bash
#   return $EINVAL
#

## include guard
[ -n "$__ERRNO_BASH" ] && return
__ERRNO_BASH="errno.bash has already been included"

EINVAL=($(errno EINVAL))
EINVAL=-${EINVAL[1]}
EEXIST=($(errno EEXIST))
EEXIST=-${EEXIST[1]}
ENOENT=($(errno ENOENT))
ENOENT=-${ENOENT[1]}
EACCESS=($(errno EACCESS))
EACCESS=-${EACCESS[1]}
EPERM=($(errno EPERM))
EPERM=-${EPERM[1]}
ETIMEDOUT=($(errno ETIMEDOUT))
ETIMEDOUT=-${ETIMEDOUT[1]}
