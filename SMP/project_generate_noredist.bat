@ECHO OFF

if not exist "..\..\FFVS-Project-Generator" (
echo "Error: FFVS Project Generator files not found next to current FFmpeg folder."
echo "Please clone the project from the online repositories before continuing (https://github.com/ShiftMediaProject/FFVS-Project-Generator.git)."
goto TERMINATE
)

if not exist "..\..\FFVS-Project-Generator\bin\project_generate.exe" (
echo "Error: FFVS Project Generator executable file not found."
echo "Please build the executable using the supplied project before continuing."
goto TERMINATE
)

cd ..\..\FFVS-Project-Generator\bin
project_generate.exe --enable-gpl --enable-version3 --enable-avisynth --enable-nonfree --enable-libmp3lame --enable-libvorbis --enable-libspeex --enable-libopus --enable-libilbc --enable-libfdk-aac --enable-libtheora --enable-libx264 --enable-libx265 --enable-libxvid --enable-libvpx --enable-libgme --enable-libmodplug --enable-libsoxr --enable-libfreetype --enable-fontconfig --enable-libfribidi --enable-libass --enable-gnutls --disable-schannel --enable-gmp --enable-libssh --enable-libcdio --enable-libbluray --enable-opengl --enable-nvenc --enable-libmfx --enable-cuda --enable-cuvid --toolchain=msvc
exit 0
   
:TERMINATE
pause