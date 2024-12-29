HEADER_EXPORT_PATH="/mnt/c/Users/Alex/Documents/python/svcap/include/ffmpeg"
DLL_EXPORT_PATH="/mnt/c/Users/Alex/Documents/python/svcap/svcap/dlls"
LIB_EXPORT_PATH="/mnt/c/Users/Alex/Documents/python/svcap/lib"

# This one works, but disabled to not need to run it every time ...
#./configure --arch=x86_64 --target-os=mingw32 --cross-prefix=x86_64-w64-mingw32- --disable-static --enable-shared --shlibdir=build --extra-ldflags="-static" --extra-cflags="-lstdc++" --enable-version3

make -j 15

cp **/*.dll /mnt/h/ffmpeg/dll/
cp **/*.lib /mnt/h/ffmpeg/libs

cp --parents libavcodec/*.h $HEADER_EXPORT_PATH
cp --parents libavdevice/*.h $HEADER_EXPORT_PATH
cp --parents libavformat/*.h $HEADER_EXPORT_PATH
cp --parents libavutil/*.h $HEADER_EXPORT_PATH
cp --parents libavfilter/*.h $HEADER_EXPORT_PATH
cp --parents libswresample/*.h $HEADER_EXPORT_PATH
cp --parents libswscale/*.h $HEADER_EXPORT_PATH

cp **/*.lib $LIB_EXPORT_PATH
cp **/*.dll $DLL_EXPORT_PATH

