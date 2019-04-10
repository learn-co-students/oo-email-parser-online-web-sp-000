# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
    attr_accessor :emails 
    
    @emails 
 
  def initialize(emails)
    @emails = emails 
  end 
  
  def parse
    #split on , or whitespace
    new_parse = @emails.split(/[, ]/)
    
    #remove emtpy string 
    parse = new_parse.reject { |elem| elem.empty? }
    
    #keep only unique 
    return parse.uniq 
  end 
  
end 
