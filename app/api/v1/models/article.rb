class Article < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  validates :post, presence: true
end
