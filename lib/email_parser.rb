# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :emails

  def initialize(email_addresses)
    @emails = email_addresses.split(/\,*\s/)
    @emails.uniq!
  end

  def parse
    @emails.each do |email_addresses|
      email_addresses.split(/\,*\s*/)
    end
  end

end
