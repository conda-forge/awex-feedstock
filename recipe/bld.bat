REM From https://github.com/conda-forge/netcdf-fortran-feedstock/blob/main/recipe/bld.bat
set "HOST=x86_64-w64-mingw32"
set "CC=%HOST%-gcc.exe"
set "FC=%HOST%-gfortran.exe"

(
echo [build_ext]
echo cmake_opts=-DPython3_EXECUTABLE="%PYTHON%" -DCMAKE_C_COMPILER=%CC% -G "Ninja"
echo compiler=%FC%
) > "%SRC_DIR%\setup.cfg"

set CFLAGS=-DMS_WIN64
set CMAKE_BUILD_PARALLEL_LEVEL=%CPU_COUNT%
python -m pip install --no-deps -v "%SRC_DIR%"
