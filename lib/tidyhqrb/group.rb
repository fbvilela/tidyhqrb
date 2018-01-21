require 'virtus'

module Tidyhqrb
  class Group
    include Virtus.model

    attribute :id, Integer
    attribute :label, String
    attribute :description, String
    attribute :created_at, DateTime

    def to_json(*opt)
      {
        id: id,
        label: label,
        description: description,
        created_at: created_at
      }.to_json(*opt)
    end
  end
end
