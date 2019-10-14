require 'sinatra/activerecord'
require './app/models/article.rb'
require './app/models/category.rb'
require 'spec_helper.rb'
require 'shoulda-matchers'
require_relative '../factories/article.rb'
require_relative '../factories/category.rb'
require 'factory_bot'

RSpec.describe Article, type: :model do
  describe 'DB table' do
    it { should have_db_column(:title) }
    it { should have_db_column(:post) }
    it { should have_db_column(:category_id) }
    it { should have_db_column(:aasm_state) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:post) }
    it { should validate_presence_of(:aasm_state) }
  end

  describe 'associations' do
    it { should belong_to(:category) }
  end

  describe 'Publish/Unpublish an article' do
    context 'returns an unpublished article' do
      let(:category) {build(:category)}
      let(:article) {build(:article, category_id: 1)}

      it "should be unpublished on creation" do
        expect(article).to have_state(:unpublished)
      end

      it "should publish an article" do
        expect(article).to transition_from(:unpublished).to(:published).on_event(:publish)
        expect(article).to have_state(:published)
        expect(article).not_to have_state(:unpublished)
      end

      it "should unpublish an article" do
        expect(article).to transition_from(:published).to(:unpublished).on_event(:unpublish)
        expect(article).to have_state(:unpublished)
      end
    end
  end
end
