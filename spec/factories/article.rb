require_relative '../support/factory_bot.rb'

FactoryBot.define do
  factory :article do
    title {'MyString'}
    post {'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'}
    category_id {1}
  end
end
