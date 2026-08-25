#!/usr/bin/env bash

set -ex

meson_config_args=(
  --prefix="$PREFIX"
  --libdir=lib
  --wrap-mode=nofallback
  --buildtype=release
  --backend=ninja
)

mkdir forgebuild
cd forgebuild
meson setup .. "${meson_config_args[@]}"
ninja -v
ninja install

# Install activate/deactivate stripts
ACTIVATE_DIR=${PREFIX}/etc/conda/activate.d
DEACTIVATE_DIR=${PREFIX}/etc/conda/deactivate.d
mkdir -p ${ACTIVATE_DIR}
mkdir -p ${DEACTIVATE_DIR}

for ext in sh csh fish; do
    cp ${RECIPE_DIR}/scripts/activate.${ext} ${ACTIVATE_DIR}/cm-activate.${ext}
    cp ${RECIPE_DIR}/scripts/deactivate.${ext} ${DEACTIVATE_DIR}/cm-deactivate.${ext}
done
