require 'mongo'

host = ENV['TEST_DB_HOST'] || 'localhost'
conn = Mongo::Connection.new(host, 27017)

MONGO_DB = conn["chod_#{Rails.env}"]