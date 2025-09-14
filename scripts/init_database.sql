/*

Create Database and Schemas

Script purpose:
	This script creates a new database named 'Datawarehouse' after checking if it already exists.
	If the database exists it is dropped and recreated. Additionally, the script creates three schemas
	within the database named - 'bronze', 'silver', 'gold'.
Warning:
	Running this script will drop the entire 'Datawarehouse' database if it already exists.
	All the data in the database will be permanently deleted. Proceed with caution and have
	backups before running the script.
Note(Pgadmin):
	If you are creating new database from the default 'postgre' database. run each line of the script
	individually. 'Drop' command will throw and error if run along with other scripts. This is only
	when creating a new database from another database.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
DROP DATABASE IF EXISTS DataWarehouse;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
