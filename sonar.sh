  
#!/usr/bin/env bash

chmod -R 644 lib/common/sonarqube-community-branch-plugin-*.jar 2>/dev/null || :
chown -R sonarqube:sonarqube lib/common/sonarqube-community-branch-plugin-*.jar 2>/dev/null || :

exec java -jar lib/sonar-application-"${SONAR_VERSION}".jar -Dsonar.log.console=true "$@"
