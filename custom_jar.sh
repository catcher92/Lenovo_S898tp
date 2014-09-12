#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
    echo ">>> in custom_jar $jarBaseName"
        idtoname tmp/baidu/framework/mediatek-res/res/values/public.xml $tempSmaliDir
		nametoid mediatek-res/res/values/public.xml $tempSmaliDir

elif [ "$jarBaseName" = "framework-yi" ];then
    echo ">>> in custom_jar $jarBaseName"
    echo ">>> replace gprs_connection_sim_setting with gprs_connection_prefer_sim_setting"
    sed -i 's/gprs_connection_sim_setting/gprs_connection_prefer_sim_setting/g' $tempSmaliDir/smali/android/telephony/BaiduTelephonyUtils.smali

fi


