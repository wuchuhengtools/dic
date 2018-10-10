#!/bin/bash;

##
#
# 有道词典接口参数配置
#
##

    appKey      =   "630a50bee42dd3f7";#应用ID
    private     =   "BTTiLQTj4WvtvPHpm4dpdzpqldSbBY6Z";#密钥
    salt        =  rand(1000,9999);#随机数
    str         =   MD5($appKey.$q.$salt.$private);
    sign        =  strtoupper($str);#签名
    fromTo      = "from=auto&to=auto";# "from=EN&to=zh_CHS";
    appKey      =  "appKey=".$appKey;
    salt        =  "salt=".$salt;
    sign        =  "sign=".$sign;
    file_contents = file_get_contents($url);
    dataArr = json_decode($file_contents);


