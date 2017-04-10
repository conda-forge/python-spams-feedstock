if [ "$(uname)" == 'Darwin' ]
then
    export LDFLAGS="${LDFLAGS} -Wl,-rpath,$PREFIX/lib"
else
    export LDFLAGS="${LDFLAGS} -Wl,-rpath=$PREFIX/lib"
fi


ln -s "${PREFIX}/lib/libopenblas${SHLIB_EXT}" "${PREFIX}/lib/libblas${SHLIB_EXT}"
ln -s "${PREFIX}/lib/libopenblas${SHLIB_EXT}" "${PREFIX}/lib/liblapack${SHLIB_EXT}"


"${PYTHON}" setup.py install
# Over using memory (too many threads?). Will have to look at later.
#"${PYTHON}" test_spams.py


rm "${PREFIX}/lib/libblas${SHLIB_EXT}"
rm "${PREFIX}/lib/liblapack${SHLIB_EXT}"

rm -r "${PREFIX}/doc"
rm -r "${PREFIX}/extdata"
rm -r "${PREFIX}/test"
