require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-timestamps'
require './app/models/peep'
require './app/models/maker'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter-challenge-#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
