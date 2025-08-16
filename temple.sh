 wget --referer="https://www.apkmirror.com/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=344792&key=af12b2d9f411f474ab910c2eb8bb3c22cd9f8715" -O temple.apk
clear
 echo "temple run apk download done"
 docker cp temple.apk codespaces-blank-android-1:/tmp/temple.apk
 clear 
 echo "copy done"
 docker exec -it codespaces-blank-android-1 bash
cat /proc/cpuinfo | grep vmx
adb install /tmp/temple.apk





#!/bin/bash

# Step 1: Download APK from APKMirror
wget --referer="https://www.apkmirror.com/" \
     --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" \
     "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=344792&key=af12b2d9f411f474ab910c2eb8bb3c22cd9f8715" \
     -O temple.apk

clear
echo "[*] TEMPLE RUN APK download done"

# Step 2: Copy APK into the container
docker cp temple.apk codespaces-blank-android-1:/tmp/temple.apk
clear
echo "[*] APK copied into container"

# Step 3: Get container IP
CONTAINER_NAME="codespaces-blank-android-1"
CONTAINER_IP=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CONTAINER_NAME)

# Step 4: Restart adb and connect
 docker exec -it codespaces-blank-android-1 bash
cat /proc/cpuinfo | grep vmx
adb kill-server
adb start-server
adb disconnect $CONTAINER_IP:5555
adb connect $CONTAINER_IP:5555

# Step 5: Show device status
adb devices

# Step 6: Install APK inside emulator
adb -s $CONTAINER_IP:5555 install -r /tmp/temple.apk

echo "[*] TEMPLE RUN installed!"

