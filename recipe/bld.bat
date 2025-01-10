REM From https://github.com/conda-forge/netcdf-fortran-feedstock/blob/main/recipe/bld.bat
REM set "HOST=x86_64-w64-mingw32"
REM set "CC=%HOST%-gcc.exe"
REM set "FC=%HOST%-gfortran.exe"

(
echo [build_ext]
echo cmake_opts=-DPython3_EXECUTABLE="%PYTHON%" -G "Ninja"
echo compiler=flang-new
) > "%SRC_DIR%\setup.cfg"

REM set CFLAGS=-DMS_WIN64
set CMAKE_BUILD_PARALLEL_LEVEL=%CPU_COUNT%
python -m pip install --no-deps -v "%SRC_DIR%"
