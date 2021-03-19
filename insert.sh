DIR_PATH='books.csv'

read -s -p "Enter Password: " pswd

read -p "Enter database to backup: " database

"\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -e "use $database; SET GLOBAL local_infile = true; load data local infile '$DIR_PATH' into table book fields terminated by ',' lines terminated by '\n' ignore 1 lines (id, title, publisher, height, code);" --local-infile=1 -u root -p$pswd