# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

def initialize(emails)
  @emails = emails
end


def parse
(@emails.split(",").join.split(" ")).uniq
end

=begin
accepts a string
parses the string at commas or spaces
compile new string of unique values
sort the new string as an array
=end
end
