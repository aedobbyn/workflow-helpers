# Use Postgres and R

Note: when you restart your machine you'll have to re-connect to the server (unless you configure it to connect on reboot)

### Connect to SQL database

Start up the Postgres server from Terminal
`'/Applications/Postgres.app/Contents/Versions/9.5/bin'/psql -p5432`  
(The number after in `-p` is the port number)

<br>

Or through the Postgres GUI

1. Open Postgres app
2. Hit "Open psql"

<br>

To work with SQL queries directly

* Open Postico or another SQL app
* Hit "Connect"

<br>



***
### Import database data to R

* Load `RPostgreSQL` package
* Set a driver as Postgres with `dbDriver()`
* Set up a connection to local database with `dbConnect()`
* Select data from a table in the database with a SQL query inside `dbGetQuery()`

<br> 

Example:
	
	library(RPostgreSQL)

	# set up driver as postgres
	drv <- dbDriver("PostgreSQL")
	
	# set connection to our db
	con <- dbConnect(drv, dbname="pullplay_db", host='localhost', port=5432, user="amanda")
	
	# select everything from table
	primary_2016 <- dbGetQuery(con, "SELECT * FROM primary_2016
	                           WHERE candidate in ('Bernie Sanders', 'Donald Trump', 'Hillary Clinton')") 
	                           
	                           

<br><br>