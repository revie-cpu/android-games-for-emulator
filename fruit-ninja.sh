wget --referer="https://www.apkmirror.com/" --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36" "https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=8912645&key=29d34cff01970a3b798eeb2af32f4f749648b60e" -O fruit-ninja.apk
 clear
 echo "fruit apk download done"
 docker cp fruit-ninja.apk codespaces-blank-android-1:/tmp/fruit-ninja.apk
 clear 
 echo "copy done"
  docker exec -it codespaces-blank-android-1 bash
cat /proc/cpuinfo | grep vmx