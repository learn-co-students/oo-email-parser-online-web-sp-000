# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails_str
  
  def initialize(emails_str)
    
    @emails_str = emails_str
    
  end
  
  def parse
    
    emails_arr = @emails_str.split(/[,]\s|\s/).uniq
    
    emails_arr
    
  end
  
end