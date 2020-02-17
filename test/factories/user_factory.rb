require "factory_bot"
include FactoryBot::Syntax::Methods

FactoryBot.define do
  sequence :cpf do |n| 
    10000000000 + n
  end

  factory :user do 
    cpf { generate :cpf }
    name { "name" } 
  end
end
