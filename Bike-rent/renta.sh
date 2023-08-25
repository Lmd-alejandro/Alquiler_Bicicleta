#!/bin/bash

# Solicitar datos al usuario
read -p "Ingresa tu documento de identidad o CC: " user_id
read -p "Ingresa el id de la bicicleta: " bike_id
read -p "Ingresa el dia que va a rentarla (YYYY-MM-DD): " date_rented
read -p "Ingresa el dia que va a devolverla (YYYY-MM-DD): " date_returned
read -p "Ingresa el estado de la bicicleta: " rental_status

# Variables de conexión a la base de datos
DB_USER="postgres"
DB_NAME="bike-db"

# Consulta SQL para insertar los datos
insert_query="INSERT INTO public.renta (user_id, bike_id, date_rented, date_returned, rental_status) VALUES ('$user_id', '$bike_id', '$date_rented', '$date_returned', '$rental_status');"

# Ejecutar la consulta SQL usando psql
psql -U $DB_USER -d $DB_NAME -c "$insert_query"