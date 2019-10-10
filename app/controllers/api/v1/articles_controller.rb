require 'sinatra/base'
require 'sinatra/json'
require 'sinatra/activerecord'
require './app/models/article.rb'
require './app/serializers/article_serializer.rb'

class ArticlesController < ApplicationController
  get '/articles' do
    articles = Article.all.map{ |article| ArticleSerializer.new(article).as_json }
    json articles
  end

  get '/articles/:id' do
    article = ArticleSerializer.new(Article.find(params[:id])).as_json
    json article
  end
end
