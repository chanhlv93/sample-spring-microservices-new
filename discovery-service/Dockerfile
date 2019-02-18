FROM openjdk:8-jdk-alpine
MAINTAINER chanhlv@fsoft.com.vn
VOLUME /tmp
ENV JAVA_OPTS=""
ADD discovery-service-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","$JAVA_OPTS -Dfile.encoding=UTF8","-jar","/app.jar"]