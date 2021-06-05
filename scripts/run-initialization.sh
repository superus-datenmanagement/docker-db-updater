sleep 90s

while ! /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P user123! -d master -Q "SELECT 1"; do
  sleep 1
done

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P user123! -d master -i create-database.sql
