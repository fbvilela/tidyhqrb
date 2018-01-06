require 'virtus'

module Tidyhqrb
  class Product
    include Virtus.model

    attribute :id, String
    attribute :name, String
    attribute :sell_category_id, Integer

    def to_json(*opt)
      {
        id: id,
        name: name,
        sell_category_id: sell_category_id
      }.to_json(*opt)
    end
  end
end
