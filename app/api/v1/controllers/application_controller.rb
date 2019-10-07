require 'sinatra/base'

class ApplicationController < Sinatra::Base
  mime_type :json, 'application/json'
  set :database_file, 'config/database.yml'

  get '/' do
    'Welcome to sinatra-blog'
  end
end
