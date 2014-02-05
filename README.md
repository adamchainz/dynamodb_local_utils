# DynamoDB Local Utilities (for Mac OS X)

This is a simple pair of scripts for having DynamoDB load on your Mac OS X
machine every time you boot up. Simply follow these instructions:

1. Clone this repo somewhere (fork it first if you wish to make changes).
2. Download DynamoDB local as per [Amazon's instructions](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html).
3. Check you have *Java 1.7* installed from [Java.com](http://java.com/en/download/mac_download.jsp).
4. Copy, or symlink, `run.sh` into the directory that you extracted `dynamodb_local` into. It's a pretty straightforward file and will run DynamoDB Local on port 3232 as given - customize to meet your needs.
5. Copy, or symlink, the plist file into `~/Library/LaunchAgents`. This is to tell the Mac OS X built–in tool `launchctl` how to run DynamoDB on start up. You will need to customize it with the absolute path of where you extracted DynamoDB - under both `ProgramArguments` and `WorkingDirectory`.
6. From inside `~/Library/LaunchAgents` run `launchctl load com.amazon.aws.DynamoDBLocal.plist`. This should load and start DynamoDB Local - you can check with Activity Monitor, `htop`, etc., or by connecting your app code to it.
7. Congratulations! You're now ready to run/test DynamoDB applications locally!!!
