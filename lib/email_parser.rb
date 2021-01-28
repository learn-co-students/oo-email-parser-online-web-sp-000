require 'pry'

# parser = EmailAddressParser.new(email-addresses)
# parser.parse

class EmailAddressParser
  attr_accessor :emailaddress
  
  def initialize(emailaddress)
    @emailaddress = emailaddress 
  end 
  
  def parse
    binding.pry 
    #emailaddress => "avi@test.com, arel@test.com"
     new_address = emailaddress.split(" ") || (", ")
     #emailaddress.split => ["avi@test.com,", "arel@test.com"]
     new_address.uniq 
     end 
end 