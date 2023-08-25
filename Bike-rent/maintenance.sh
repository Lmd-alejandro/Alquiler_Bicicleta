#!/bin/bash

# Solicitar datos al usuario
read -p "Ingresa el id de la bicicleta: " fk_bicycle_id
read -p "Ingresa el dia del mantenimiento (YYYY-MM-DD): " maintenance_date
read -p "Ingresa el tipo del mantenimiento: " maintenance_type
read -p "Ingresa la descripcion: " description
read -p "Ingresa el encargado del  arreglo de la bicicleta: " mechanic
read -p "Ingresa la condicion de la bicicleta despues del arreglo: " bicycle_condition_after_main_tenance
read -p "Ingresa los comentarios: " comments
read -p "Ingresa el costo del mantenimiento: " maintenance_cost

# Variables de conexión a la base de datos
DB_USER="postgres"
DB_NAME="bike-db"

# Consulta SQL para insertar los datos
insert_query="INSERT INTO public.maintenance (fk_bicycle_id, maintenance_date, maintenance_type, description, mechanic, bicycle_condition_after_main_tenance, comments, maintenance_cost) VALUES ('$fk_bicycle_id', '$maintenance_date', '$maintenance_type', '$description', '$mechanic', '$bicycle_condition_after_main_tenance', '$comments', '$maintenance_cost');"

# Ejecutar la consulta SQL usando psql
psql -U $DB_USER -d $DB_NAME -c "$insert_query"