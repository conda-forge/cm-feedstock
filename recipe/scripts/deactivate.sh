#!/bin/bash

# Unset custom env vars
if [ -n "$_CONDA_UNSET_CMDOMAIN" ]; then
    unset CMDOMAIN
    unset _CONDA_UNSET_CMDOMAIN
fi
if [ -n "$_CONDA_UNSET_CMROOT" ]; then
    unset CMROOT
    unset _CONDA_UNSET_CMROOT
fi
if [ -n "$_CONDA_UNSET_CMMGR" ]; then
    unset CMMGR
    unset _CONDA_UNSET_CMMGR
fi
if [ -n "$_CONDA_UNSET_CMDOMAINS" ]; then
    unset CMDOMAINS
    unset _CONDA_UNSET_CMDOMAINS
fi
