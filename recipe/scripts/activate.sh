#!/bin/bash

# Set a default CMDOMAIN
if [ -z "${CMDOMAIN+x}" ]; then
  export CMDOMAIN=Conda
  export _CONDA_UNSET_CMDOMAIN=1
fi

# Set default CM directories
if [ -z "${CMROOT+x}" ]; then
  export CMROOT="${CMTMPDIR:-${TMPDIR:-/tmp}}/cm"
  export _CONDA_UNSET_CMROOT=1
fi
if [ -z "${CMMGR+x}" ]; then
  export CMMGR="${CMROOT}/mgr"
  export _CONDA_UNSET_CMMGR=1
fi
if [ -z "${CMDOMAINS+x}" ]; then
  export CMDOMAINS=$CMMGR/CmDomains
  export _CONDA_UNSET_CMDOMAINS=1
fi

# Create a default CmDomains file
if [ "${CMDOMAIN}" = "Conda" ] && [ ! -f "$CMDOMAINS" ]; then
  mkdir -p "$CMMGR"
  echo "Conda localhost 19000 19001 899 ${CMROOT}" > "$CMDOMAINS"
fi
