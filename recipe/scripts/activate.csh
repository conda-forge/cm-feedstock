#!/bin/csh

# Set a default CMDOMAIN
if (! $?CMDOMAIN) then
  setenv CMDOMAIN Conda
  setenv _CONDA_UNSET_CMDOMAIN 1
endif

# Set default CM directories
if (! $?CMROOT) then
  if ($?CMTMPDIR) then
    setenv CMROOT "${CMTMPDIR}/cm"
  else if ($?TMPDIR) then
    setenv CMROOT "${TMPDIR}/cm"
  else
    setenv CMROOT "/tmp/cm"
  endif
  setenv _CONDA_UNSET_CMROOT 1
endif
if (! $?CMMGR) then
  setenv CMMGR "${CMROOT}/mgr"
  setenv _CONDA_UNSET_CMMGR 1
endif
if (! $?CMDOMAINS) then
  setenv CMDOMAINS "${CMMGR}/CmDomains"
  setenv _CONDA_UNSET_CMDOMAINS 1
endif

# Create a default CmDomains file
if ("$CMDOMAIN" == "Conda" && ! -f "$CMDOMAINS") then
  mkdir -p "$CMMGR"
  echo "Conda localhost 19000 19001 899 ${CMROOT}" > "$CMDOMAINS"
endif
