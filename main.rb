require "factory_bot"

include FactoryBot::Syntax::Methods

FactoryBot.find_definitions

db = Mongo::Base.new
db.clear(:user)
create :user
create :user
create :user
create :user
