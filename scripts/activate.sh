#!/bin/bash
# Store existing env vars so we can restore them later
if [ -z "$CMDOMAIN" ]; then
    export _CONDA_SET_CMDOMAIN=$CMDOMAIN
fi
export CMDOMAIN=Conda

if [ -z "$CMMGR" ]; then
    export _CONDA_SET_CMMGR=$CMMGR
fi

mkdir -p $CONDA_PREFIX/share/cm/mgr
export CMMGR=$CONDA_PREFIX/share/cm/mgr

#Create the cmdomains file if it does not already exist
CMDOMAINS=$CONDA_PREFIX/share/cm/mgr/CmDomains
if [ ! -f "$CMDOMAINS" ]; then 
    echo "Conda localhost  19000 19001 899 $CONDA_PREFIX/share/cm" > $CONDA_PREFIX/share/cm/mgr/CmDomains
fi
