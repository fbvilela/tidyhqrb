require 'tidyhqrb'

Tidyhq::Client.auth_token = 'd6f55957f99f79333a69e3de48337d223524f697214ed27a228ba1a19d50fd8a'
contacts = Tidyhq::Client.new.contacts.all do |req|
  puts req.class
end
puts contacts.collect(&:attributes).flatten
