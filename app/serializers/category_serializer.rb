require 'active_model_serializers'

class CategorySerializer < ActiveModel::Serializer
  attributes :name, :description
end
