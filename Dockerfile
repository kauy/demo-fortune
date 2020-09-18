FROM bitnami/java:11-prod
LABEL Owner="Kauy Souza"

ADD target/fortune-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-Xmx512m", "-jar", "/app.jar"]