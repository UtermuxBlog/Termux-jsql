#!/data/data/com.termux/files/usr/bin/bash
echo Installing Java and VNCServer
pkg up && pkg i x11-repo && pkg i tigervnc && pkg i openjdk-17
echo Downloading jsql-injection Form GitHub
wget https://github.com/ron190/jsql-injection/releases/download/v0.85/jsql-injection-v0.85.jar
echo Setting DISPLAY value and Starting VNCServer
export DISPLAY=:1
vncserver :1
echo Starting jsql-injection
java -jar jsql-injection-v0.85.jar
echo You can now connect to VNCServer with this IP address: :1