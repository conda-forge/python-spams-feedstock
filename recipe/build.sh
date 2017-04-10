if [ "$(uname)" == 'Darwin' ]
then
    export LIBRARY_SEARCH_VAR=DYLD_FALLBACK_LIBRARY_PATH
else
    export LIBRARY_SEARCH_VAR=LD_LIBRARY_PATH
fi


ln -s "${PREFIX}/lib/libopenblas${SHLIB_EXT}" "${PREFIX}/lib/libblas${SHLIB_EXT}"
ln -s "${PREFIX}/lib/libopenblas${SHLIB_EXT}" "${PREFIX}/lib/liblapack${SHLIB_EXT}"


"${PYTHON}" setup.py install
# Over using memory (too many threads?). Will have to look at later.
#eval ${LIBRARY_SEARCH_VAR}=$PREFIX/lib "${PYTHON}" test_spams.py


rm "${PREFIX}/lib/libblas${SHLIB_EXT}"
rm "${PREFIX}/lib/liblapack${SHLIB_EXT}"

rm -r "${PREFIX}/doc"
rm -r "${PREFIX}/extdata"
rm -r "${PREFIX}/test"
