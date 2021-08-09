#!/bin/bash
/usr/bin/zmpkg.pl status | grep running 2>/dev/null >/dev/null || exit 1