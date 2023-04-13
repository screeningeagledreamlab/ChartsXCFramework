#!/usr/bin/env sh

xcodebuild archive \
    -project "Charts.xcodeproj" \
    -scheme "Charts" \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "build/Charts-iOSSimulator.xcarchive" \
    SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
    -project "Charts.xcodeproj" \
    -scheme "Charts" \
    -configuration Release \
    -destination "generic/platform=iOS" \
    -archivePath "build/Charts-iOS.xcarchive" \
    SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
    -project "Charts.xcodeproj" \
    -scheme "Charts" \
    -configuration Release \
    -destination "generic/platform=macOS,variant=Mac Catalyst" \
    -archivePath "build/Charts-Catalyst.xcarchive" \
    SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
    -framework build/Charts-iOS.xcarchive/Products/Library/Frameworks/Charts.framework \
    -framework build/Charts-iOSSimulator.xcarchive/Products/Library/Frameworks/Charts.framework \
    -framework build/Charts-Catalyst.xcarchive/Products/Library/Frameworks/Charts.framework \
    -output build/Charts.xcframework
