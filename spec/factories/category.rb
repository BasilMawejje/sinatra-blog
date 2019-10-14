require_relative '../support/factory_bot'

FactoryBot.define do
  factory :category do
    name {'MyString'}
    description {'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.'}
  end
end
