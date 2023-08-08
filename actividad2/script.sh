#!/bin/bash

# Consultando la api de Github
response=$(curl -s "https://api.github.com/users/$GITHUB_USER")

# Campos Requeridos
github_user=$(echo "$response" | jq -r '.login')
user_id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

# Crear la carpeta de log según fecha
log_folder="/tmp/$(date +'%Y%m%d')"
mkdir -p "$log_folder"

# Crear el archivo .log 
log_file="$log_folder/saludos.log"
echo "Hola $github_user. User ID: $user_id. Cuenta fue crwada el: $created_at." > "$log_file"

# Mensaje en pantalla
echo "Mensaje de saludo:"
cat "$log_file"