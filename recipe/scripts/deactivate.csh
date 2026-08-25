#!/bin/csh

# Unset custom env vars
if ($?_CONDA_UNSET_CMDOMAIN) then
    unsetenv CMDOMAIN
    unsetenv _CONDA_UNSET_CMDOMAIN
endif
if ($?_CONDA_UNSET_CMROOT) then
    unsetenv CMROOT
    unsetenv _CONDA_UNSET_CMROOT
endif
if ($?_CONDA_UNSET_CMMGR) then
    unsetenv CMMGR
    unsetenv _CONDA_UNSET_CMMGR
endif
if ($?_CONDA_UNSET_CMDOMAINS) then
    unsetenv CMDOMAINS
    unsetenv _CONDA_UNSET_CMDOMAINS
endif
