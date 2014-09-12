echo "in $0"

OUT_DIR=out/merged_target_files/

cp prebuilt/OTA/bin/update-binary $OUT_DIR/OTA/bin/updater
cp prebuilt/bin/serviceext $OUT_DIR/SYSTEM/bin/serviceext
