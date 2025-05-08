@echo off
set BUILD_DIR=build
if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"
cd "%BUILD_DIR%"
cmake -DCMAKE_BUILD_TYPE=Debug ..
if %errorlevel% neq 0 (
    echo CMake configuration failed.
    exit /b %errorlevel%
)
cmake --build . --config Debug
if %errorlevel% neq 0 (
    echo Build failed.
    exit /b %errorlevel%
)
echo Build complete.
cd ..