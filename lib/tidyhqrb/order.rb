require 'virtus'
require "tidyhqrb/contact"

module Tidyhqrb
  class ProductOrder
    include Virtus.model

    attribute :product_id, String
    attribute :variant_id, Integer
    attribute :quantity, Integer
    attribute :created_at, DateTime

    def to_json(*opt)
      {
        product_id: product_id,
        variant_id: variant_id,
        quantity: quantity,
        created_at: created_at
      }.to_json(*opt)
    end
  end

  class Order
    include Virtus.model

    attribute :id, String
    attribute :contact_id, Integer
    attribute :number, Integer
    attribute :created_at, DateTime
    attribute :products, [ProductOrder]

    def to_json(*opt)
      {
        id: id,
        contact_id: contact_id,
        number: number,
        created_at: created_at,
        products: products,
      }.to_json(*opt)
    end
  end
end
