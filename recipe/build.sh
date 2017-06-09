if [ "$(uname)" == 'Darwin' ]
then
    export LDFLAGS="${LDFLAGS} -Wl,-rpath,$PREFIX/lib"
else
    export LDFLAGS="${LDFLAGS} -Wl,-rpath=$PREFIX/lib"
fi


"${PYTHON}" setup.py install


rm -r "${PREFIX}/doc"
rm -r "${PREFIX}/extdata"
rm -r "${PREFIX}/test"
