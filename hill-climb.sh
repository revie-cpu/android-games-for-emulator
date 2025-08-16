 wget --referer="https://www.apkmirror.com/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=9331287&key=835341c472d6700177de303d4216e2d28761c552" -O hill.apk
 echo "hill climb racing apk download done"
 docker cp hill.apk codespaces-blank-android-1:/tmp/hill.apk
 docker exec -it codespaces-blank-android-1 bash
cat /proc/cpuinfo | grep vmx
adb install /tmp/hill.apk