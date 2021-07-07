# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email_list

  def initialize(string)
    @email_list = string
  end
  
  def parse
    parsed = @email_list.delete ","
    parsed.split(" ").uniq
    
  end
  
end 
