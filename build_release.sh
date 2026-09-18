#!/usr/bin/env bash
set -e
if [ ! -f app/google-services.json ]; then
  echo "ضع app/google-services.json الحقيقي أولاً."
  exit 1
fi
if [ -z "$ANDROID_HOME" ] && [ -z "$ANDROID_SDK_ROOT" ]; then
  echo "ANDROID_HOME أو ANDROID_SDK_ROOT غير مضبوط."
  exit 1
fi
./gradlew assembleRelease
echo "ابحث عن APK داخل app/build/outputs/apk/release/"
