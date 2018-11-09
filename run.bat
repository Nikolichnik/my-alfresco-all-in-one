::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::      Dev environment startup script for Alfresco Community     ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@ECHO OFF

IF "%MAVEN_OPTS%" == "" (
    ECHO The environment variable 'MAVEN_OPTS' is not set, setting it for you
    SET MAVEN_OPTS=-Xms256m -Xmx2G -XXaltjvm=dcevm -javaagent:C:\Users\nstojanovic\Documents\AlfrescoProjects\setup\hotswap-agent.jar
)
ECHO MAVEN_OPTS is set to '%MAVEN_OPTS%'

mvn clean install -Dmaven.test.skip=true alfresco:run