# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
attr_accessor :parse

def initialize(emails)
  @emails = emails
end

def parse
  split_emails = @emails.split.collect {|address| address.split(",")}
  split_emails.flatten.uniq
  
  
end

end




