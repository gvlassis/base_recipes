cargo install --path "${SRC_DIR}/atuin" --root ${PREFIX}

mkdir -p "${PREFIX}/bin/"
cp "${SRC_DIR}/bin/atuin" "${PREFIX}/bin/"