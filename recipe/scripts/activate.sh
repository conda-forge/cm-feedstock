#!/bin/bash
# Check if CMDOMAIN varible is set to check if we are already in a cm domain if not
# then create a custom conda cm domain that can send/ recieve messages
if [ -z "${CMDOMAIN+x}" ]; then
    export CMDOMAIN=Conda

    if [ ! -z "${CMMGR+x}" ]; then
        export _CONDA_SET_CMMGR=$CMMGR
    fi

    mkdir -p $CONDA_PREFIX/share/cm/mgr
    export CMMGR=$CONDA_PREFIX/share/cm/mgr

    #Create the cmdomains file if it does not already exist
    CMDOMAINFILE=$CONDA_PREFIX/share/cm/mgr/CmDomains
    if [ ! -f "$CMDOMAINFILE" ]; then
        echo "Conda localhost  19000 19001 899 $CONDA_PREFIX/share/cm" > $CONDA_PREFIX/share/cm/mgr/CmDomains
    fi
fi
