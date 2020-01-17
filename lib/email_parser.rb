# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'


class EmailAddressParser
  def initialize(emails)
    @emails = emails 
    def parse
    # Seperate email addresses either by comma or or empty space 
    # I'm going to use split on the emails to seperate an email by commas first 
    @emails.split(/[\s,]+/).uniq 
    
    # If I get a string of emails that are seperates by, both, spaces and commas, it still parses both commas and and spaces
    # This method removes duplicate emails 
    end 
  end

    
  
  
  
  # where do I put the parse method?
  # Do I define it outside of the initialize method or inside?
end 