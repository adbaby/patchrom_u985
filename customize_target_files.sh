PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files

if [ -e $METADATA_DIR/updater ]
then
   echo "Use custom updater bin file"
   cp $METADATA_DIR/updater $TARGET_FILES_DIR/OTA/bin
fi

echo "Copy FIRMWARE Files"
rm -r out/target_files/RADIO/
mkdir -p out/target_files/RADIO/
cp -r other/firmwares/b02/* out/target_files/RADIO/
