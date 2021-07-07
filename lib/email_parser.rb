# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  
  attr_accessor :string_of_emails
  
  def initialize(string_of_emails)
    @string_of_emails = string_of_emails
  end
  
  def parse
    new_array = []
    new_array=@string_of_emails.split(/\s|\,+\s/).uniq
  end




end