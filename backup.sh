#!/bin/bash

# Configuration de base: datestamp e.g. YYYYMMDD

DATE=$(date +""%Y-%m-%d_%H-%M-%S"")

# Dossier où sauvegarder les backups (créez le d'abord!)

mkdir "backup"

BACKUP_DIR="backup"
DATABASE="library"




# Identifiants MySQL

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe" -u root -proot $DATABASE > "$BACKUP_DIR/$DATE$DATABASE.sql"