#
unzip $1 -d apk_extract_only_unzip
md5deep -rl apk_extract_only_unzip | sed 's/apk_extract_only_unzip/ /g' | sort -k2 > original_apk_hashes.md5
rm -rf apk_extract_only_unzip

#
java -jar apktool_2.7.0.jar d $1 $2 -o apktool_decompiled
java -jar apktool_2.7.0.jar b apktool_decompiled -o apktool_extract
rm -rf apktool_decompiled

unzip apktool_extract -d apk_extract
rm -rf apktool_extract
md5deep -rl apk_extract | sed 's/apk_extract/ /g' | sort -k2 > after_apktool_apk_hashes.md5
rm -rf apk_extract

diff original_apk_hashes.md5 after_apktool_apk_hashes.md5
