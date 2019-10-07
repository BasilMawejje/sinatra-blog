require 'sinatra/activerecord/rake'
require './app'

Dir['./app/api/v1/models/*.rb'].each { |file|
  require file
}

Dir['./app/api/v1/controllers/*.rb'].each { |file|
  require file
}
