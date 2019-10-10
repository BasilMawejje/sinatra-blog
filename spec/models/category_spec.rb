require 'sinatra/activerecord'
require './app/models/article.rb'
require './app/models/category.rb'
require 'spec_helper.rb'
require 'shoulda-matchers'

RSpec.describe Category, type: :model do
  describe 'DB table' do
     it { should have_db_column(:name) }
     it { should have_db_column(:description) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end

  describe 'associations' do
    it { should have_many(:articles) }
  end
end
