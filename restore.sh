#!/bin/bash

# Configuration de base: datestamp e.g. YYYYMMDD

BACKUP_DIR="backup"

#ask password
read -s -p "Enter Password: " pswd

#ask database to restore
read -p "Enter database to restore: " database

#ask filename
read -p "Enter the filename who restore database without extension(ie: .sql): " filename



# Identifiants MySQL

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe" -u root -p$pswd $database < "$BACKUP_DIR/$filename.sql"