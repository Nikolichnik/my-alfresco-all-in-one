#!/bin/bash
if [[ -z ${MAVEN_OPTS} ]]; then
    echo "The environment variable 'MAVEN_OPTS' is not set, setting it for you";
    MAVEN_OPTS='-Xms256m -Xmx2G -XXaltjvm=dcevm -javaagent:C:/Users/nstojanovic/Documents/AlfrescoProjects/setup/hotswap-agent.jar'
fi
echo "MAVEN_OPTS is set to '$MAVEN_OPTS'";
mvn clean install -Dmaven.test.skip=true alfresco:run