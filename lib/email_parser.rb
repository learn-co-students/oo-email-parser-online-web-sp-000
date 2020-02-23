# Build a class EmailParser that accepts a string of unformatted emails.
class EmailAddressParser
  def initialize (email_addresses)
    @email_addresses = email_addresses
  end

  #The parse method on the class should separate them into unique email addresses.
#The delimiters to support are commas (',') or whitespace (' ').

  def parse
    parsed = []
    @email_addresses.split(/[\s,]+/).each do |m|
      parsed << m if !parsed.include?(m)
    end
    parsed
  end
end
