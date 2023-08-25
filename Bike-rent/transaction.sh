#!/bin/bash

# Solicitar datos al usuario
read -p "Ingrese el id de la renta: " rental_id
read -p "Ingrese el dinero a mandar: " total_amount
read -p "Ingrese el estado de la compra: " payment_status
read -p "ingrese la fecha de la transacción (YYYY-MM-DD): " payment_date

# Variables de conexión a la base de datos
DB_USER="postgres"
DB_NAME="bike-db"

# Consulta SQL para insertar los datos
insert_query="INSERT INTO public.transaction (rental_id, total_amount, payment_status, payment_date) VALUES ('$rental_id', '$total_amount', '$payment_status', '$payment_date');"

# Ejecutar la consulta SQL usando psql
psql -U $DB_USER -d $DB_NAME -c "$insert_query"
