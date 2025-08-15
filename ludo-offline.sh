 wget --referer="https://www.apkmirror.com/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=7657089&key=4a9f114d97e9098202fc7bf7d7c1e0b6428aaab2&forcebaseapk=true" -O ludo.apk
 clear
 echo "ludo offline apk download done"
 docker cp ludo.apk codespaces-blank-android-1:/tmp/ludo.apk
 clear 
 echo "copy done"
 docker exec -it codespaces-blank-android-1 bash
cat /proc/cpuinfo | grep vmx
adb install /tmp/ludo.apk
