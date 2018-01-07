require 'virtus'

module Tidyhqrb
  class Category
    include Virtus.model

    attribute :id, Integer
    attribute :name, String
    attribute :description, String

    def to_json(*opt)
      {
        id: id,
        name: name,
        description: description
      }.to_json(*opt)
    end
  end
end
