FROM tomcat:9.0-jre8-alpine

COPY target/mvnTrainingWebApp.war $CATALINA_HOME/webapps/mvnTrainigWebApp.war

HEALTHCHECK --interval=1m --timeout=3s CMD wget --quiet --tries=1 --spider http://localhost:8080/wizard/ || exit 1
