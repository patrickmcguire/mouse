# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Mouse::Application.initialize!
ActiveRecord::Base.establish_connection
ActiveRecord::ConnectionAdapters::PostgreSQLAdapter::NATIVE_DATABASE_TYPES[:primary_key] = 'bigserial primary key'
