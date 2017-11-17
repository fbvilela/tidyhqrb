require 'restroom'
require 'tidyhqrb/contact'

module Tidyhqrb
  class Client
    include Restroom

    restroom 'https://api.tidyhq.com', base_path: 'v1' do
      exposes :contacts, model: Contact
    end

    def self.stack(config)
    
    end
  end
end