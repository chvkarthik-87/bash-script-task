#!/bin/bash

sudo dnf install java-21-amazon-corretto -y

cd /opt

sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.52/bin/apache-tomcat-10.1.52.tar.gz

sudo tar -xzf apache-tomcat-10.1.52.tar.gz

sudo mv apache-tomcat-10.1.52 tomcat

sudo chmod +x /opt/tomcat/bin/*.sh

sudo /opt/tomcat/bin/startup.sh

echo "Apache Tomcat installed and started successfully."
