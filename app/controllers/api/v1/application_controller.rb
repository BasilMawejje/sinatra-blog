require 'sinatra/base'
require 'json'

class ApplicationController < Sinatra::Base
  set :database_file, 'config/database.yml'

  before do
    content_type :json
  end

  get '/' do
    'Welcome to sinatra-blog'
  end
end
