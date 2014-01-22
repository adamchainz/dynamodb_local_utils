#!/bin/sh
/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java \
    -Djava.libary.path=./DynamoDBLocal_lib \
    -jar DynamoDBLocal.jar \
    --port 3232
