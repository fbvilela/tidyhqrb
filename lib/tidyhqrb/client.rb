require 'restroom'
require 'tidyhqrb/product'

module Tidyhqrb
  class Client
    include Restroom

    restroom 'https://api.tidyhq.com', base_path: 'v1' do
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
