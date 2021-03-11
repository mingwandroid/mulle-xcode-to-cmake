#!/usr/bin/env bash

pushd hello-world
  VERBOSE=1 mulle-xcode-to-cmake -2 -b -d -i  export test-mulle-xcode-to-cmake.xcodeproj/project.pbxproj > test-mulle-xcode-to-cmake.xcodeproj/CMakeLists.txt
  VERBOSE=1 mulle-xcode-to-cmake -2 -b -d -i sexport test-mulle-xcode-to-cmake.xcodeproj/project.pbxproj > test-mulle-xcode-to-cmake.xcodeproj/CMakeSourcesAndHeaders.txt
  pushd test-mulle-xcode-to-cmake.xcodeproj
    cmake .
  popd
popd
