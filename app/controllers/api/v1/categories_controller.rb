require 'sinatra/base'
require 'sinatra/json'
require 'sinatra/activerecord'
require './app/models/category.rb'
require './app/controllers/api/v1/application_controller.rb'
require './app/serializers/category_serializer.rb'
require 'pry'

class CategoriesController < ApplicationController
  get '/categories' do
    categories = Category.all.map{ |category| CategorySerializer.new(category).as_json }
    json categories
  end

  get '/categories/:id' do
    category = CategorySerializer.new(Category.find(params[:id])).as_json
    json category
  end
end
