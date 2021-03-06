require 'virtus'

module Tidyhqrb
  class Category
    include Virtus.model

    attribute :id, Integer
    attribute :name, String
    attribute :description, String
    attribute :created_at, DateTime

    def to_json(*opt)
      {
        id: id,
        name: name,
        description: description,
        created_at: created_at
      }.to_json(*opt)
    end
  end
end
