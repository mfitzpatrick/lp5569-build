#! /bin/bash

EXTENSION=${EXTENSION:-".src"}

infile=$1; shift

indir=`dirname "$infile"`
filebase=`basename "$infile" "$EXTENSION"`

mono /opt/lp5569/lasm.exe "$infile"

if [ -f "${indir}/${filebase}.hex" ]; then
    xxd -r -p "${indir}/${filebase}.hex" "${indir}/${filebase}.bin"
fi

