require './lib/database_connection'
class DatabaseConnectionSetup
  if ENV['ENVIRONMENT'] == 'test'
    DatabaseConnection.setup('message_test')
  else
    DatabaseConnection.setup('message')
  end
end