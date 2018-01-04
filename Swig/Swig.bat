@setlocal EnableDelayedExpansion
if NOT DEFINED MSVC_VERSION set MSVC_VERSION=15

if "%MSVC_VERSION%"=="14" (
    if "%processor_architecture%" == "AMD64" (
        set CMAKE_GENERATOR=Visual Studio 14 2015 Win64
    ) else (
        set CMAKE_GENERATOR=Visual Studio 14 2015
    )
) else if "%MSVC_VERSION%"=="12" (
    if "%processor_architecture%" == "AMD64" (
        set CMAKE_GENERATOR=Visual Studio 12 2013 Win64
    ) else (
        set CMAKE_GENERATOR=Visual Studio 12 2013
    )
) else if "%MSVC_VERSION%"=="15" (
    if "%processor_architecture%" == "AMD64" (
        set CMAKE_GENERATOR=Visual Studio 15 2017 Win64
    ) else (
        set CMAKE_GENERATOR=Visual Studio 15 2017
    )
)
if "%MSVC_VERSION%"=="15" (
    set batch_file=!VS%MSVC_VERSION%0COMNTOOLS!..\..\VC\Auxiliary\Build\vcvarsall.bat
) else (
    set batch_file=!VS%MSVC_VERSION%0COMNTOOLS!..\..\VC\vcvarsall.bat
)
call "%batch_file%" %processor_architecture%

python setup.py build
cp ./build/lib.win-amd64-3.6/* ../python/
pause
