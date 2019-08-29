# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  attr_accessor :email_addresses
  
  
  def initialize(email_addresses)
 
    @parser = email_addresses.split /\s|, /
     
    
  end 
  
  
  def parse 
  
    @parser.uniq 
    
  
  end 
  
  

  
end 
 