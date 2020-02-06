# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    # start by splitting email_addresses using commas and spaces as delimiters
    email_array = @email_addresses.split(/[, ]/)
    #remove blank spaces from email_array caused by the split on a space
    result = email_array.reject {|element| element.empty?}
    result.uniq # return result removing any duplicates from array
  end

end
