FROM  --platform=amd64 sonarqube:lts-community

#jdbc:mysql://ubuntu-mysql:3306/sonar

ENV SONAR_JDBC_URL=jdbc:postgresql://postgres-sql-server:5432/sonar
ENV SONAR_JDBC_USERNAME=sonar
ENV SONAR_JDBC_PASSWORD=sonar

EXPOSE 9000