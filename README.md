# db_liquibase_sample

This is an easy example how to create database migrations with [Liquibase](http://www.liquibase.org/).
clean compile liquibase:update


java -jar ./lib/liquibase-core-3.4.2.jar --driver=org.postgresql.Driver --classpath=./lib/postgresql-9.3-1102-jdbc41.jar --changeLogFile=src/main/resources/liquibase/db.changelog.xml --url="jdbc:postgresql://localhost:5432/liquibasedemo" --username=liquibasedemo --password=liquibasedemo update
