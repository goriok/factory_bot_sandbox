require "factory_bot"
include FactoryBot::Syntax::Methods

FactoryBot.find_definitions

user1 = build :user
user2 = build :user
user3 = build :user

puts user1.inspect
puts user2.inspect
puts user3.inspect
