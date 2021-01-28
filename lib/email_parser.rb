require 'pry'


# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# parser = EmailAddressParser.new(email-addresses)
# parser.parse

class EmailAddressParser
  binding.pry 
  attr_accessor :emailaddress
  
  def initialize(emailaddress)
    @emailaddress = emailaddress 
  end 
  
  def parse
     new_address = emailaddress.split (" ") || (", ")
     binding.pry 
     new_address.uniq 
        end 
end 