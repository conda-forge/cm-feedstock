# Unset custom env vars
if set -q _CONDA_UNSET_CMDOMAIN
    set -e CMDOMAIN
    set -e _CONDA_UNSET_CMDOMAIN
end
if set -q _CONDA_UNSET_CMROOT
    set -e CMROOT
    set -e _CONDA_UNSET_CMROOT
end
if set -q _CONDA_UNSET_CMMGR
    set -e CMMGR
    set -e _CONDA_UNSET_CMMGR
end
if set -q _CONDA_UNSET_CMDOMAINS
    set -e CMDOMAINS
    set -e _CONDA_UNSET_CMDOMAINS
end
