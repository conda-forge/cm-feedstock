#!/bin/bash
# Restore previous env vars if any
if [ "${CMDOMAIN}" = "Conda" ]; then
    unset CMDOMAIN
    unset CMMGR
    if [ -z "$_CONDA_SET_CMMGR" ]; then
        export CMMGR=$_CONDA_SET_CMMGR
        unset _CONDA_SET_CMMGR
    fi
fi