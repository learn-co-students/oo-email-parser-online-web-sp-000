# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :email_addresses
  
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  def parse
    address_array = @email_addresses.split(/[, ]/)
    if address_array.include?("")
      address_array.delete("")
      address_array.uniq
    else
      address_array.uniq
    end
  end
  
end