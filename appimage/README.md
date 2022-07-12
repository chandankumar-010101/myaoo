# PangeaChat AppImage

PangeaChat is provided as AppImage too. To Download, visit pangeaChat.im.

## Building

- Ensure you install `appimagetool`

```shell
flutter build linux

# copy binaries to appimage dir
cp -r build/linux/{x64,arm64}/release/bundle appimage/PangeaChat.AppDir
cd appimage

# prepare AppImage files
cp PangeaChat.desktop PangeaChat.AppDir/
mkdir -p PangeaChat.AppDir/usr/share/icons
cp ../assets/logo.svg PangeaChat.AppDir/pangeaChat.svg
cp AppRun PangeaChat.AppDir

# build the AppImage
appimagetool PangeaChat.AppDir
```
