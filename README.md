# db_liquibase_sample

This is an easy example how to create database migrations with [Liquibase](http://www.liquibase.org/).

It is based on PostgreSQL database and should run right away after checking it out,
if your postgres-server is up and running. You might need to add password to the
create- and drop-scripts depending on your database configuration for the postgres-user.
Of course you can also easily switch the example to make use of another database by
changing JDBC imports and URL.

As it is not possible to create a new database with Liquibase this needs to be done
outside of Liquibase. The same is true for creating the database user that is used.
To do this there are two convenience scripts:
* createDatabaseAndUser.sh
* dropDatabaseAndUser.sh

## Execution using Maven

To execute the example just execute the create-script and then you can execute Flyway using Maven. Please take a look at the [POM-file](https://github.com/ThomasJaspers/db_liquibase_sample/blob/master/pom.xml) to check the Liquibase configuration.

clean compile liquibase:update

## Execution using the Command Line Tool

There is no need for any additional installation as the required JARs are stored to the lib-folder of this project. 

Just execute the following command from the command line. The configuration file [liquibase.properties](https://github.com/ThomasJaspers/db_liquibase_sample/blob/master/src/main/resources/liquibase/liquibase.properties) contains all the needed configuration for execution from the command line. 

java -jar ./lib/liquibase-core-3.4.2.jar update

Please note that you must execute the above command from the base directory of the project where the liquibase.properties file is located.
