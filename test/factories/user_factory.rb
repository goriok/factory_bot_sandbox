require "factory_bot"
require 'mongo'
require 'json'

include FactoryBot::Syntax::Methods

FactoryBot.define do
  sequence :cpf do |n| 
    10000000000 + n
  end

  factory :user do 
    cpf { generate :cpf }
    name { "name" } 
  end

  to_create { |user| 
    db = Mongo::Base.new

    # based on https://stackoverflow.com/questions/5030553/ruby-convert-object-to-hash
    hash = {}
    user.instance_variables.each {|var| hash[var.to_s.delete("@")] = user.instance_variable_get(var) }
    
    db.insert(:user, hash) 
    db.close
  }
end
