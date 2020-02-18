
require 'mongo'
module Mongo
  class Base
    def initialize
      mongo_url = 'mongodb://mongoadmin:secret@localhost:27017/sandbox?authSource=admin'
      @client = Mongo::Client.new(mongo_url)
    end

    def insert(collection_name, document)
      collection(collection_name).insert_one(document)
    end

    def clear(collection_name, filter = {})
      collection(collection_name).delete_many(filter)
    end

    def close
      @client.close
    end

    private

    def collection(name)
      @client[name]
    end
  end

end

