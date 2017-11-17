require 'tidyhqrb'

contacts = Tidyhqrb::Client.new.contacts.all(access_token: 'c5dfe64e17444f15ccdda20fbef6286a31c6a4850db300a6e338f561b4604dd5')
puts contacts.collect(&:attributes).flatten
