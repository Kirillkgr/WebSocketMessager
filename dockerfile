FROM maven:3-amazoncorretto-17
WORKDIR /wsm
# Копируем файлы проекта в рабочую директорию контейнера
COPY . /wsm
# Собираем JAR-файл с помощью Maven
RUN mvn clean install
# Определяем команду для запуска в контейнере
CMD ["java", "-jar", "target/WebSocketMessager-0.0.2.jar"]