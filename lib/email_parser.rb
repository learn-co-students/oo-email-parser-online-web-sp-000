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
# The [] bracket notation says to match any characer in the setter
# The + tells to treat multiple spaces between emails as a single separator
parsed_emails = @email_addresses.split(/[,\s]+/).uniq

end

end
