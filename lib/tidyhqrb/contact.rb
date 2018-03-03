require 'virtus'

module Tidyhqrb
  class Contact
    include Virtus.model

    attribute :id, Integer
    attribute :first_name, String
    attribute :last_name, String
    attribute :email_address, String
    attribute :phone_number, String
    attribute :address1, String
    attribute :city, String
    attribute :state, String
    attribute :postcode, String
    attribute :created_at, DateTime

    def to_json(*opt)
      {
        id: id,
        first_name: first_name,
        last_name: last_name,
        email_address: email_address,
        phone_number: phone_number,
        address1: address1,
        city: city,
        state: state,
        postcode: postcode,
        created_at: created_at
      }.to_json(*opt)
    end
  end
end
