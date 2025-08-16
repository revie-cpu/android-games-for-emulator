 wget --referer="https://www.rawgithubusercontent.com/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" "https://raw.githubusercontent.com/revie-cpu/android-games-for-emulator/main/apps/hill.apk" -O hill.apk
 echo "hill climb racing apk download done"
 docker cp hill.apk codespaces-blank-android-1:/tmp/hill.apk
 docker exec -it codespaces-blank-android-1 bash
cat /proc/cpuinfo | grep vmx
adb install /tmp/hill.apk