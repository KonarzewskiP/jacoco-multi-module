FROM openjdk:17

EXPOSE 8080

ADD target/multi-module-1.0-SNAPSHOT.jar multi-module-1.0-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "--enable-preview", "multi-module-1.0-SNAPSHOT.jar"]
