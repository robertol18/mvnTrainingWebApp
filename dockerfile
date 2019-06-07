FROM tomcat:9.0-jre8-alpine

#using path outside of context for ADD/COPY commands. You should use relative path from your build context. Abs path leading to same place will not work.
COPY target/mvnTrainingWebApp.war $CATALINA_HOME/webapps/mvnTrainigWebApp.war

HEALTHCHECK --interval=1m --timeout=3s CMD wget --quiet --tries=1 --spider http://localhost:8080/wizard/ || exit 1
