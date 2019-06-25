# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  #setter and getter for email variable
  attr_accessor :email
  
  emails = []
  
  def initialize(emails)
    @email = emails
  end  
  
  def parse
    emails = @email.split(/[,\s]+/).uniq
    emails
  end
  
end  