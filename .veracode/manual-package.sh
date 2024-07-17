#!/bin/bash
set -e
pushd ..

pushd "$(dirname "$0")" >/dev/null 2>&1
repo_root=`git rev-parse --show-toplevel`
output_dir="$repo_root/.veracode/output/manual"

#echo "Setting jdk 1.8 ..."
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home

#echo "Setting gradle ..."
#gradle wrapper

echo "Running gradle command ..."
./gradlew  clean build -x test;

if [ $? -eq 0 ]; then
    echo "Gradle build successful."
    mkdir -p "$output_dir"
    cp -rf app/build/libs/*.jar "$output_dir/"
  else
    echo "Gradle build failed."
fi
popd >/dev/null 2>&1
