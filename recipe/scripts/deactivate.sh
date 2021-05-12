#!/bin/bash
# Restore previous env vars if any
export CMDOMAIN=
if [ ! -z "$_CONDA_SET_CMDOMAIN" ]; then
    export CMDOMAIN=$_CONDA_SET_CMDOMAIN
    export _CONDA_SET_CMDOMAIN=
fi

export CMMGR=
if [ ! -z "$_CONDA_SET_CMMGR" ]; then
    export CMMGR=$_CONDA_SET_CMMGR
    export _CONDA_SET_CMMGR=
fi
