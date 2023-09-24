FROM openjdk:17

EXPOSE 8080

ADD target/multi-module-core-1.0-SNAPSHOT.jar multi-module-core-1.0-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "--enable-preview", "multi-module-1.0-SNAPSHOT.jar"]
