FROM sonarqube:8-community

RUN chmod -R 644 ${SONARQUBE_HOME}/lib/common/sonarqube-community-branch-plugin-*.jar 2>/dev/null && \
    chown -R sonarqube:sonarqube ${SONARQUBE_HOME}/lib/common/sonarqube-community-branch-plugin-*.jar 2>/dev/null

WORKDIR ${SONARQUBE_HOME}
EXPOSE 9000
ENTRYPOINT ["bin/run.sh"]
CMD ["bin/sonar.sh"]
