require 'virtus'

module Tidyhqrb
  class Contact
    include Virtus.model

    attribute :last_name, String
    attribute :first_name, String
    attribute :email_address, String
    attribute :id, Integer
  end
end