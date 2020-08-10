FROM sonarqube:8-community

COPY --chown=sonarqube:sonarqube sonar.sh ${SONARQUBE_HOME}/bin/

WORKDIR ${SONARQUBE_HOME}
EXPOSE 9000
ENTRYPOINT ["bin/run.sh"]
CMD ["bin/sonar.sh"]
