#!/bin/sh
/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin/java \
    -Djava.libary.path=. \
    -jar DynamoDBLocal.jar \
    --port 3232
