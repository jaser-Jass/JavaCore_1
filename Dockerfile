# Используем образ с JDK
FROM openjdk:17-jdk-slim

# Устанавливаем javadoc
RUN apt-get update && apt-get install -y openjdk-17-doc

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем весь проект в контейнер
COPY . .

# Команда по умолчанию для генерации документации с помощью javadoc
CMD ["javadoc", "-d", "mydocumentation", "-sourcepath", "src/main/java", "-subpackages", "ru.gb.ratnikova"]