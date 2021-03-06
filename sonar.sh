  
#!/usr/bin/env bash

cp extensions/plugins/sonarqube-community-branch-plugin-*.jar lib/common/ 2>/dev/null || :
chmod -R 644 lib/common/sonarqube-community-branch-plugin-*.jar 2>/dev/null || :
chown -R sonarqube:sonarqube lib/common/sonarqube-community-branch-plugin-*.jar 2>/dev/null || :

exec java -jar lib/sonar-application-"${SONAR_VERSION}".jar -Dsonar.log.console=true "$@"
