#!/bin/bash

# Solicitar datos al usuario
read -p "Ingresa el modelo de la bicicleta: " bike_model
read -p "Ingresa el tipo de bicicleta: " bike_type
read -p "Ingresa el estado de disponibilidad: " availability_status
read -p "Ingresa el tamaño de la bicicleta: " bike_size
read -p "Ingresa el color de la bicicleta: " bike_color

# Variables de conexión a la base de datos
DB_USER="postgres"
DB_NAME="bike-db"

# Consulta SQL para insertar los datos
insert_query="INSERT INTO public.bike (bike_model, bike_type, availability_status, bike_size, bike_color) VALUES ('$bike_model', '$bike_type', '$availability_status', '$bike_size', '$bike_color');"

# Ejecutar la consulta SQL usando psql
psql -U $DB_USER -d $DB_NAME -c "$insert_query"