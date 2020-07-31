# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  def initialize(emails)
    @emails = emails
    parse
  end


  def parse
    @parsed_emails = @emails.split(/\s|(,)/)
    @parsed_emails.delete("")
    @parsed_emails.delete(",")
    @parsed_emails.uniq!
    @parsed_emails
  end

end
