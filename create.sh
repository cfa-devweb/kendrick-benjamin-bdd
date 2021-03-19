#!/bin/bash

# ask password
read -s -p "Enter Password: " pswd

"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" mysql -u root -proot -e "source library.sql"
