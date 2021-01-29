require 'pry'

class EmailAddressParser
  attr_accessor :emailaddress
  
  def initialize(emailaddress)
    @emailaddress = emailaddress 
  end 
  
  def parse
     new_address = emailaddress.split(/, | /)
     new_address.uniq 
     end
end 