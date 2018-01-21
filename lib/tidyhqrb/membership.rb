require 'virtus'

module Tidyhqrb
  class Membership
    include Virtus.model

    attribute :id, Integer
    attribute :start_date, DateTime
    attribute :end_date, DateTime
    attribute :contact_id, Integer
    attribute :membership_level_id, Integer
    attribute :state, String
    attribute :created_at, DateTime

    def to_json(*opt)
      {
        id: id,
        start_date: start_date,
        end_date: end_date,
        contact_id: contact_id,
        membership_level_id: membership_level_id,
        state: state,
        created_at: created_at
      }.to_json(*opt)
    end
  end
end
