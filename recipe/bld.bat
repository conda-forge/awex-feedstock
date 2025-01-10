(
echo [build_ext]
echo cmake_opts=-DPython3_EXECUTABLE="%PYTHON%" -G "Ninja"
echo compiler=%FC%
) > "%SRC_DIR%\setup.cfg"

set CMAKE_BUILD_PARALLEL_LEVEL=%CPU_COUNT%
python -m pip install --no-deps -v "%SRC_DIR%"
