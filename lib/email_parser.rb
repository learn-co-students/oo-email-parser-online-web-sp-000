# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_address_array
  
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  def parse
    @email_address_array = @email_addresses.split(/[\s,]/)
    @email_address_array.delete("")
    @email_address_array.delete(" ")
    i = 0 
    @comparative_array = []
    while i < @email_address_array.length
      @comparative_array.push(@email_address_array[i]) if @comparative_array.include?(@email_address_array[i]) == false
      i+=1
      @comparative_array
    end
    @email_address_array = @comparative_array
    @email_address_array
  end
end

email_addresses = "john@doe.com, person@somewhere.org,, , dman@gmail.com, dman@gmail.com"
parser = EmailAddressParser.new(email_addresses)
parser.parse
print parser.email_address_array
