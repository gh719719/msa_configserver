FROM eclipse-temurin:17-jdk-alpine
# 빌드된 jar 파일을 컨테이너로 복사 (파일명은 프로젝트 설정에 따라 다를 수 있음)
COPY build/libs/*.jar config-server.jar
# Config Server의 기본 포트는 8888입니다.
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "/config-server.jar"]