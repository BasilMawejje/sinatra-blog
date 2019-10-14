require 'spec_helper'
require './app/controllers/api/v1/articles_controller'
require './app/controllers/api/v1/application_controller'
require './spec/factories/article'

RSpec.describe ArticlesController, type: :request do
  include Rack::Test::Methods

  def app
    ArticlesController.new
  end

  describe 'GET /articles' do
    context 'returns an article' do
      let(:category) {build(:category)}
      let(:article) {build(:article, category_id: 1)}

      it 'should return a collection of articles' do
        get '/articles'

        expect(last_response).to be_ok
        expect(last_response.status).to eq 200
        expect(last_request.path_info).to eq '/articles'
      end
    end
  end
end
