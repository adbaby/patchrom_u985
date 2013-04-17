#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

echo "original dir: $2"
echo "target dir:$1"

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
    for file in `find $1/smali -name *.part`
    do
	filepath=`dirname $file`
	filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done

    cp $1/TD.patch out/
    cp $1/Phone.patch out/
    cp $1/Phone-res.patch out/
    ../../tools/rmline.sh out/Phone/smali/com/android/phone/MiuiPreferredNetworkTypeListPreference.smali
    cd out
    $GIT_APPLY Phone.patch 
    $GIT_APPLY TD.patch 
	patch -p1 < Phone-res.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Phone patch fail"
        exit 1
    done

	echo "Merge Phone's xml"
	$XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
fi

if [ $1 = "DeskClock" ];then
    cp $1/DeskClock.patch out/
    cd out
    $GIT_APPLY DeskClock.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "DeskClock patch fail"
        exit 1
    done
fi
