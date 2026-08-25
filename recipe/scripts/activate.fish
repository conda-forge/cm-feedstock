# Set a default CMDOMAIN
if not set -q CMDOMAIN
    set -gx CMDOMAIN Conda
    set -gx _CONDA_UNSET_CMDOMAIN 1
end

# Set default CM directories
if not set -q CMROOT
    if set -q CMTMPDIR
        set -gx CMROOT "$CMTMPDIR/cm"
    else if set -q TMPDIR
        set -gx CMROOT "$TMPDIR/cm"
    else
        set -gx CMROOT "/tmp/cm"
    end
    set -gx _CONDA_UNSET_CMROOT 1
end
if not set -q CMMGR
    set -gx CMMGR "$CMROOT/mgr"
    set -gx _CONDA_UNSET_CMMGR 1
end
if not set -q CMDOMAINS
    set -gx CMDOMAINS "$CMMGR/CmDomains"
    set -gx _CONDA_UNSET_CMDOMAINS 1
end

# Create a default CmDomains file
if test "$CMDOMAIN" = "Conda" -a ! -f "$CMDOMAINS"
    mkdir -p "$CMMGR"
    echo "Conda localhost 19000 19001 899 $CMROOT" > "$CMDOMAINS"
end
