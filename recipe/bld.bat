mkdir build
cd build

cmake %CMAKE_ARGS% ^
    -DCMAKE_CXX_FLAGS="/UBOOST_ALL_DYN_LINK" ^
    -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded" ^
    -DBUILD_PYTHON=OFF ^
    -DBUILD_TEST=OFF ^
    ..

cmake --build . --config Release -j%CPU_COUNT%

cmake --install . --prefix "%LIBRARY_PREFIX%"
