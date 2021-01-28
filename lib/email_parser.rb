require 'pry'

class EmailAddressParser
  attr_accessor :emailaddress
  
  def initialize(emailaddress)
    @emailaddress = emailaddress 
  end 
  
  def parse
    if emailaddress.include? ","
     csv_address = emailaddress.split(", ")
     csv_address.uniq
   elsif 
     !emailaddress.include? ", "
     non_csv_address = emailaddress.split(" ")
     non_csv_address.uniq 
     end
   end 
end 