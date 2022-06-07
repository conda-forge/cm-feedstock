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

cp ${RECIPE_DIR}/scripts/activate.sh ${ACTIVATE_DIR}/cm-activate.sh
cp ${RECIPE_DIR}/scripts/deactivate.sh ${DEACTIVATE_DIR}/cm-deactivate.sh
