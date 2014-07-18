#!/bin/sh
/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java \
    -Djava.library.path=./DynamoDBLocal_lib \
    -jar DynamoDBLocal.jar \
    --port 3232
