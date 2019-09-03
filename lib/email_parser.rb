# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails
  
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  def parse
    
    if @email_addresses.include?(",") == true
      @array = []
      emails = @email_addresses.delete! ","
      list = emails.split
      list.uniq
    else
      spaces = @email_addresses.split
      spaces.uniq
    end
  end
  
end