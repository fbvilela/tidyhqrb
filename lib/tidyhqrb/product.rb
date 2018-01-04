require 'virtus'

module Tidyhqrb
  class Product
    include Virtus.model

    attribute :id, String
    attribute :name, String

    def to_json(*opt)
      {
        id: id,
        name: name
      }.to_json(*opt)
    end
  end
end
