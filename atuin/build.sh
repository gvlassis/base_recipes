cargo install --path "${SRC_DIR}/atuin" --root "${SRC_DIR}"

mkdir -p "${PREFIX}/bin"
cp "${SRC_DIR}/bin/atuin" "${PREFIX}/bin"