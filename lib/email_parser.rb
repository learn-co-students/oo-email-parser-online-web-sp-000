# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(raw_email_addresses)
    @raw_email_addresses = raw_email_addresses
  end

  def parse
    @raw_email_addresses.delete!(",")
    @email_addresses = @raw_email_addresses.split(" ")
    @email_addresses.uniq
  end
end
