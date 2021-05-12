#!/bin/bash
# Store existing env vars so we can restore them later
if [ -z "$CMDOMAIN" ]; then
    export _CONDA_SET_CMDOMAIN=$CMDOMAIN
fi
export CMDOMAIN=Conda

if [ -z "$CMMGR" ]; then
    export _CONDA_SET_CMMGR=$CMMGR
fi

# Check if varible CMTMPDIR exist, otherwise checks if TMPDIR varible is set and if not sets it to /tmp
if [ -z "$CMTMPDIR" ]; then
    TMPDIR=$CMTMPDIR
elif [ -z "$TMPDIR" ]; then
    TMPDIR=/tmp
fi

mkdir -p $TMPDIR/cm/mgr
export CMMGR=$TMPDIR/cm/mgr

#Create the cmdomains file if it does not already exist
CMDOMAINS=$TMPDIR/cm/mgr/CmDomains
if [ ! -f "$CMDOMAINS" ]; then 
    echo "Conda localhost  19000 19001 899 $TMPDIR/cm" > $TMPDIR/cm/mgr/CmDomains
fi
