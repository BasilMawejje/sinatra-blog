require 'sinatra/activerecord'
require './app/api/v1/models/article.rb'
require './app/api/v1/models/category.rb'
require 'spec_helper.rb'
require 'shoulda-matchers'

RSpec.describe Article, type: :model do
  describe 'DB table' do
    it { should have_db_column(:title) }
    it { should have_db_column(:post) }
    it { should have_db_column(:category_id) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:post) }
  end

  describe 'associations' do
    it { should belong_to(:category) }
  end
end
