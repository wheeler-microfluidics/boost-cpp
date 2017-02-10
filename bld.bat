set BOOST_VERSION=1.46.1-py2.7
set BOOST_DIR=boost-0.%BOOST_VERSION%
REM Download Windows (32-bit) binary.
"%PYTHON%" -m wget http://microfluidics.utoronto.ca/software/boost-%BOOST_VERSION%-gcc4.4.1.zip
if errorlevel 1 exit 1
REM Extract boost library directory from zip archive.
"%PREFIX%"\Library\bin\7za x boost-%BOOST_VERSION%-gcc4.4.1.zip
if errorlevel 1 exit 1

@echo off
:: Make library directory (and parent directories, if necessary).
setlocal enableextensions
md "%PREFIX%"\Library\share\boost
md "%PREFIX%"\Library\include
md "%PREFIX%"\Library\lib
md "%PREFIX%"\Library\dll
endlocal

:: Copy package source files into library directory.
copy "%SRC_DIR%"\%BOOST_DIR%\stage\lib\*.a "%PREFIX%"\Library\lib
if errorlevel 1 exit 1
copy "%SRC_DIR%"\%BOOST_DIR%\stage\lib\*.dll "%PREFIX%"\Library\bin
if errorlevel 1 exit 1
copy "%SRC_DIR%"\%BOOST_DIR%\LICENSE_1_0.txt "%PREFIX%"\Library\share\boost
if errorlevel 1 exit 1
xcopy /S /Y /I /Q "%SRC_DIR%"\%BOOST_DIR%\boost "%PREFIX%"\Library\include\boost
if errorlevel 1 exit 1
