#!/bin/bash

echo "Starting build Aubio XCFramework"

cd ./Frameworks

cp -rf aubio.framework aubio-ios.framework
cp -rf aubio.framework aubio-iosimulator.framework
cd aubio-ios.framework
mv aubio ./aubio-ios
lipo -remove x86_64 ./aubio-ios -o ./aubio-ios
cd ../aubio-iosimulator.framework
mv aubio ./aubio-iosimulator
lipo -remove armv7 -remove armv7s -remove arm64 aubio-iosimulator -o ./aubio-iosimulator
cd ..
xcodebuild -create-xcframework -framework aubio-iosimulator.framework -framework aubio-ios.framework -output ./aubio.xcframework

rm -rf aubio.framework aubio-ios.framework aubio-iosimulator.framework











