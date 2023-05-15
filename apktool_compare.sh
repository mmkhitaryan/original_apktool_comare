#
unzip $1 -d apk_extract
md5deep -rl apk_extract | sort -k2 > original_apk_hashes.md5

#
java -jar apktool_2.7.0.jar d $1 $2 -o apk_extract
java -jar apktool_2.7.0.jar b $1 -o apk_extract
rm -rf apktool_extracted
md5deep -rl apk_extract | sort -k2 > after_apktool_apk_hashes.md5

diff original_apk_hashes.md5 after_apktool_apk_hashes.md5
