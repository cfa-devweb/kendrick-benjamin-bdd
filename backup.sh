#!/bin/bash

# Configuration de base: datestamp e.g. YYYYMMDD

DATE=$(date +""%Y-%m-%d_%H-%M-%S"")

# Dossier où sauvegarder les backups (créez le d'abord!)

mkdir "backup"

BACKUP_DIR="backup"


read -s -p "Enter Password: " pswd

read -p "Enter database to backup: " database

# Identifiants MySQL

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe" -u root -p$pswd $database > "$BACKUP_DIR/$DATE$database.sql"