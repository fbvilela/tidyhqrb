require 'virtus'

module Tidyhqrb
  class MembershipLevel
    include Virtus.model

    attribute :id, Integer
    attribute :name, String
    attribute :description, String
    attribute :duration, Integer
    attribute :unit_period, String
    attribute :fixed, Boolean
    attribute :start_at, DateTime
    attribute :enabled, Boolean
    attribute :active_since, DateTime
    attribute :amount, String
    attribute :bundle, Boolean
    attribute :deleted, Boolean
    attribute :created_at, DateTime

    def to_json(*opt)
      {
        id: id,
        name: name,
        description: description,
        duration: duration,
        unit_period: unit_period,
        fixed: fixed,
        start_at: start_at,
        enabled: enabled,
        active_since: active_since,
        amount: amount,
        bundle: bundle,
        deleted: deleted,
        created_at: created_at
      }.to_json(*opt)
    end
  end
end
