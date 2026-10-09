#!/usr/bin/env bash
set -euo pipefail
: "${JAVA_HOME:?Set JAVA_HOME to JDK 21}"
: "${ANDROID_HOME:?Set ANDROID_HOME to the Android SDK}"
probe_source_dir=$(cd "$(dirname "$0")" && pwd)
probe_build_dir=${1:?Pass an output directory outside the source tree}
probe_android_jar="$ANDROID_HOME/platforms/android-37.0/android.jar"
mkdir -p "$probe_build_dir/classes" "$probe_build_dir/dex"
"$JAVA_HOME/bin/javac" --release 8 -Xlint:-options -cp "$probe_android_jar" \
  -d "$probe_build_dir/classes" "$probe_source_dir/NonRootHalProbe.java"
"$ANDROID_HOME/build-tools/37.0.0/d8" --lib "$probe_android_jar" \
  --output "$probe_build_dir/dex" "$probe_build_dir/classes/"*.class
printf 'Built %s/dex/classes.dex\n' "$probe_build_dir"
