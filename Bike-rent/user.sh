#!/bin/bash

# Solicitar datos al usuario
read -p "Ingresa ty nombre: " name
read -p "Ingresa tu numero de telefono: " phone
read -p "Ingresa la direccion de email: " email

# Variables de conexión a la base de datos
DB_USER="postgres"
DB_NAME="bike-db"

# Consulta SQL para insertar los datos
insert_query="INSERT INTO public.user (name, phone, email) VALUES ('$name', '$phone', '$email');"

# Ejecutar la consulta SQL usando psql
psql -U $DB_USER -d $DB_NAME -c "$insert_query"
