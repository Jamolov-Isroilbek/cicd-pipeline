# Build: docker build -t hello-app .
# Run:   docker run -p 8080:8080 hello-app

FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/*.war app.war

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.war"]
