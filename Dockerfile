# Build a JAR File
FROM maven:3.8.2-openjdk-11-slim AS stage1
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean package

# Create an Image
FROM adoptopenjdk:11-jre-hotspot-bionic
EXPOSE 5000
COPY --from=stage1 /home/app/target/TodoDemoApplication-0.0.1RELEASE.jar TodoDemoApplication-0.0.1RELEASE.jar
ENTRYPOINT ["sh", "-c", "java -jar /TodoDemoApplication-0.0.1RELEASE.jar"]
