require 'active_model_serializers'

class ArticleSerializer < ActiveModel::Serializer
  attributes :category_id, :title, :post, :aasm_state
end
