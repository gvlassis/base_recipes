# Taken from: https://anaconda.org/dnachun/atuin
cargo install --locked --root ${PREFIX} --path .

mkdir -p "${PREFIX}/bin/"
cp "${SRC_DIR}/bin/atuin" "${PREFIX}/bin/"