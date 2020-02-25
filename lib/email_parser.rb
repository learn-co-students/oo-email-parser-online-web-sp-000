# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
  attr_accessor :string_emails
  
  def initialize(string_emails)
    @string_emails = string_emails
  end
  
  def parse
    emails = string_emails.delete(",").split.uniq
  end
end