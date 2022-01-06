FROM openjdk:11
COPY target/social-cats-0.0.1-SNAPSHOT.jar social-cats-1.0.0.jar
ENTRYPOINT ["java","-jar","/social-cats-1.0.0.jar"]