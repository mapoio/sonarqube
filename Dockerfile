FROM sonarqube:8-community

COPY --chown=sonarqube:sonarqube sonar.sh ${SONARQUBE_HOME}/bin/

RUN chmod 775 ${SONARQUBE_HOME}/bin/sonar.sh

WORKDIR ${SONARQUBE_HOME}
EXPOSE 9000
ENTRYPOINT ["bin/run.sh"]
CMD ["bin/sonar.sh"]
