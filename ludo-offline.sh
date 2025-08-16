 wget --referer="https://www.apkmirror.com/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" "" -O ludo.apk
 clear
 echo "ludo offline apk download done"
 docker cp ludo.apk codespaces-blank-android-1:/tmp/ludo.apk
 clear 
 echo "copy done"
 docker exec -it codespaces-blank-android-1 bash
cat /proc/cpuinfo | grep vmx
adb install /tmp/ludo.apk
