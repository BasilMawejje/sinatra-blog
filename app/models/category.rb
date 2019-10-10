class Category < ActiveRecord::Base
  has_many :articles

  validates :name, presence: true
  validates :description, presence: true
end
