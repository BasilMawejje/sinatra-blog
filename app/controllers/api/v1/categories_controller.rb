require 'sinatra'
require 'sinatra/activerecord'
require './app/models/category.rb'

class CategoriesController < ApplicationController
  get '/categories' do
    categories = Category.all
    categories.to_json({:only => [:id, :name, :description]})
  end

  get '/categories/:id' do
    category = Category.find(params[:id])
    category.to_json({:only => [:id, :name, :description]})
  end
end
