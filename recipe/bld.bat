mkdir build
cd build
cmake %CMAKE_ARGS% ^
    -DBUILD_PYTHON=OFF ^
    -DBUILD_TEST=OFF ^
    -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreadedDLL" ^
    -DOpenMP_RUNTIME_MSVC="llvm" ^
    ..
cmake --build . --config Release -j%CPU_COUNT%

cmake --install . --prefix "%LIBRARY_PREFIX%"
