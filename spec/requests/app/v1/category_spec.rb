require 'spec_helper'
require './app/controllers/api/v1/categories_controller'
require './app/controllers/api/v1/application_controller'
require './spec/factories/category'

RSpec.describe CategoriesController, type: :request do
  include Rack::Test::Methods

  def app
    CategoriesController.new
  end

  describe 'GET /categories' do
    context 'returns a category' do
      let(:category) {build(:category)}
      let(:article) {build(:article, category_id: 1)}

      it 'should return a collection of categories' do
        get '/categories'

        expect(last_response).to be_ok
        expect(last_response.status).to eq 200
        expect(last_request.path_info).to eq '/categories'
      end
    end
  end
end
