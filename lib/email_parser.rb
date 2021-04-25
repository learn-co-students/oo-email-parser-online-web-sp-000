# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email 
  
  def initialize(email)
    @email = email
  end 
  
  def parse
    @email.split(/[, ]/).uniq.reject {|string| string.empty?}
    
    # The below line of code is the same thing as above but way more elegant
    # (below code received from the solution. Above is what I wrote.). 
    # The "|" pipe character is a comparrison character. 
    # Says, split the string into an array at ", " or " "
    # This will not create any empty strings and therefore the #reject method does not need to be used. 
    
    # @email.split(/, | /).uniq 
  end 
end 