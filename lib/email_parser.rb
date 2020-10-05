# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :email_list 
  
  def initialize(cvs_email)
    @email_list = cvs_email
  end
  
  def parse 
    @email_list.split.collect do |email| 
      email.split(",")
    end
    .flatten.uniq 
  end
  
end