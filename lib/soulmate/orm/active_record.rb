module Soulmate
  module ORM
    class ActiveRecord
      def self.add(record, data = {})
        # ProductType becomes product_type
        loader = ::Soulmate::Loader.new(record.class.to_s.underscore)
      
        # Soulmate will remove a previous record if the id is taken
        loader.add({
          "id"    => record.id,
          "term"  => record.to_s,
          "score" => 1, # why not,
          "data"  => data
        })
      end
    end
  end
end