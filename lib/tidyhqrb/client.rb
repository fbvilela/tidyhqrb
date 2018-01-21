require 'restroom'
require 'tidyhqrb/category'
require 'tidyhqrb/contact'
require 'tidyhqrb/group'
require 'tidyhqrb/membership'
require 'tidyhqrb/membership_level'
require 'tidyhqrb/order'
require 'tidyhqrb/product'

module Tidyhqrb
  class Client
    include Restroom

    restroom 'https://api.tidyhq.com', base_path: 'v1' do
      exposes :categories, model: Category, id: :id
      exposes :contacts, model: Contact, id: :id do
        exposes :memberships, model: Membership, id: :id
      end
      exposes :groups, model: Group, id: :id do
        exposes :contacts, model: Contact, id: :id
      end
      exposes :memberships, model: Membership, id: :id
      exposes :membership_levels, model: MembershipLevel, id: :id do
        exposes :memberships, model: Membership, id: :id
      end
      exposes :orders, model: Order, base_path: 'shop', id: :id
      exposes :products, model: Product, base_path: 'shop', id: :id
    end

    def self.auth_token=(auth_token)
      @@auth_token=auth_token
    end

    def self.stack(config)
      config.params[:access_token] = @@auth_token
    end
  end
end
