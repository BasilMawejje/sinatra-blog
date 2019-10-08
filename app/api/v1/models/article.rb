require 'aasm'

class Article < ActiveRecord::Base
  include AASM

  belongs_to :category

  validates :title, presence: true
  validates :post, presence: true
  validates :aasm_state, presence: true

  aasm do
    state :unpublished, initial: true
    state :published

    event :publish do
      transitions from: :unpublished, to: :published
    end

    event :unpublish do
      transitions from: :published, to: :unpublished
    end
  end
end
