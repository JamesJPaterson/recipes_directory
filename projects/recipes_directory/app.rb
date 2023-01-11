require_relative 'lib/database_connection'
# We need to give the database name to the method `connect`.
DatabaseConnection.connect('your_database_name')
# Perform a SQL query on the database and get the result set. For example:
sql = SELECT examplecolumn1, examplecolumn2, etc FROM exampletablename;
result = DatabaseConnection.exec_params(sql, [])
# Print out each record from the result set .
result.each do |record|
  p record
end