FROM openjdk:8-jre-alpine
ENV APP_FILE proxy-service-1.0-SNAPSHOT.jar
ENV APP_HOME /app

COPY target/$APP_FILE $APP_HOME/
WORKDIR $APP_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar -Dfile.encoding=UTF8 $APP_FILE"]