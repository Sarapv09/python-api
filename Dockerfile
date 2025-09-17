// Usa una imagen base de Python
FROM python:3.7.11-slim

// Dice cual será el directorio de trabajo en el contenedor
WORKDIR  /python-api

// Copia el archivo de requerimientos al contenedor
COPY requirements.txt requirements.txt

// Instala las dependencias del archivo de requerimientos
RUN pip install -r requirements.txt

// Copia el contenido del directorio actual al contenedor
COPY . .

// Comando para ejecutar la aplicación Flask
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
