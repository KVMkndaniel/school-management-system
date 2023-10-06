
# install open jdk 20
FROM openjdk:20-jdk

WORKDIR /home/

FROM maven AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#COPY --from=build /home/app/target/school-management-system-0.0.1-SNAPSHOT.jar /home/app.jar

#
# Package stage
#
#FROM openjdk:11-jre-slim
#COPY --from=build /home/app/target/demo-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar

#ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]

#WORKDIR /home
#COPY  src/main/resources/functionslist.json /home/functionslist.json
EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.profiles.active=docker","-jar","/home/app/target/school-management-system-0.0.1-SNAPSHOT.jar"]
#ENTRYPOINT ["java","-jar","/home/app.jar"]
