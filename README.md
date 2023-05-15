# original_apktool_comare
To use it, put your apk into this folder and run:
```
sh apktool_compare.sh yourapkname.apk "-r -s"
```
or 
```
sh apktool_compare.sh com.shizhuang.duapp_5.16.0_623.apk
```

Example results of the script running:

```
  inflating: apk_extract/org/apache/commons/codec/language/bm/sep_rules_spanish.txt  
  inflating: apk_extract/pinyindb/pinyin_gwoyeu_mapping.xml  
  inflating: apk_extract/pinyindb/pinyin_mapping.xml  
  inflating: apk_extract/pinyindb/unicode_to_hanyu_pinyin.txt  
10,15d9
< 801e7ae038dd9f8d3d9b579af7f08c93   /META-INF/HUPU_AND.RSA
< b26297d6c1db3af2595c4b3e2a0a9648   /META-INF/HUPU_AND.SF
< 6adab6740a62a32b98fda1d18104ee8c   /META-INF/INDEX.LIST
< 086e7e5072d301d2bdbee372c36c7afa   /META-INF/MANIFEST.MF
< 618d4655d8870fd2fcdff6d929e91da2   /META-INF/com/android/build/gradle/app-metadata.properties
< 9c0e185ee1f800d1378beb1c6b99229c   /META-INF/io.netty.versions.properties
```

I didn't know that apktool could eat some of the app's files. I thought it's 1=1 extractor! I should investigate reasons why that happens. 

The interesting part is that apktool ignores only those files listed, there IS a directory /META-INF/ but only those files are missing!