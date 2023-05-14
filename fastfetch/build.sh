cmake "${SRC_DIR}" 
make

mkdir -p "${PREFIX}/bin/"
cp "${SRC_DIR}/flashfetch" "${PREFIX}/bin/"