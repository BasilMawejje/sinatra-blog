require 'sinatra/base'
require 'sinatra/activerecord'
require './app/api/v1/models/article.rb'

class ArticlesController < ApplicationController
  get '/articles' do
    articles = Article.all
    articles.to_json({:only => [:id, :title, :post, :category_id]})
  end

  get '/articles/:id' do
    article = Article.find(params[:id])
    article.to_json({:only => [:id, :title, :post, :category_id]})
  end
end
