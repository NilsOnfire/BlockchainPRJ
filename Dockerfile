# Usar una imagen de Python
FROM python:3.10

# Establecer variables de entorno
ENV PYTHONUNBUFFERED 1

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los requisitos de la aplicación
COPY requirements.txt /app/

# Instalar dependencias
RUN pip install -r requirements.txt

# Copiar el proyecto en el contenedor
COPY . /app/

# Comando para ejecutar la aplicación
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
