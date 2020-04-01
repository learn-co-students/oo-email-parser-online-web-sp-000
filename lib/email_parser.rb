# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_list

  def initialize(email_addresses)
    @email_list = email_addresses
  end

  # Define the parser method
  def parse
    emails = @email_list.scan(/\w+@\w+.\w+/)
    emails.uniq
  end
end
