 wget --referer="https://www.apkmirror.com/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=757565&key=59cd5693e0f165dd2f7538d252b7ad8930f006b8" -O temple.apk
clear
 echo "temple run apk download done"
 docker cp temple.apk codespaces-blank-android-1:/tmp/temple.apk
 clear 
 echo "copy done"
 docker exec -it codespaces-blank-android-1 bash
cat /proc/cpuinfo | grep vmx
adb install /tmp/temple.apk
