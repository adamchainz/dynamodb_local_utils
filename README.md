# Utilities for running DynamoDB Local on Mac OS X

This is a simple pair of scripts for having DynamoDB load on your Mac OS X
machine every time you boot up. Simply follow these instructions:

1. Download DynamoDB local as per [the instructions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html).
2. Check you have Java 1.7 installed from [java.com](http://java.com/en/download/mac_download.jsp)
3. Copy, or symlink, `run.sh` into the directory that you extracted `dynamodb_local` into. It will run on port 3232 as it stands.
4. Copy, or symlink, the plist file into `~/Library/LaunchAgents`. This is to tell the built in tool `launchctl` how to run DynamoDB on start up. You will need to customize it with the path where you extracted DynamoDB - under both `ProgramArguments` and `WorkingDirectory`.
5. From inside `~/Library/LaunchAgents` run `launchctl load com.amazon.aws.DynamoDBLocal.plist`. This should load and start DynamoDB Local - you can check with Activity Monitor, `htop`, or similar.
