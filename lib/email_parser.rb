# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
  
  attr_reader :email_list
  
  def initialize(email_list)
    @email_list = email_list
  end
  
  def parse
    email_array = []
    parsed_email = []
    if @email_list.include?(",")
      email_array = @email_list.split(/,\s?|\s/)
    else
      email_array = @email_list.split(" ")
    end
    email_array.uniq
  end
end