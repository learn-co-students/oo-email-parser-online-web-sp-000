# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(string)
    @emails_to_parse = string
  end
  
  def parse
  emails = @emails_to_parse.split(/[\s,]+/)
  emails.uniq
  end
end
