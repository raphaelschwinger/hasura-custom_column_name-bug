#!/bin/bash

export MSSQL_SA_PASSWORD=$DEFAULT_MSSQL_SA_PASSWORD
(/opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Server is listening on" && sleep 20

echo "SQL Server started"


/opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U SA -P $MSSQL_SA_PASSWORD -i /var/opt/mssql/backup/testDatabase.sql -o /var/opt/mssql/backup/testDatabase_output.txt

