require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser 
  attr_accessor :email 
  
  def initialize(email)
    @email = email 
  end 
  
  def parse
    if @email.include?(", ")
      new_split = @email.split(", ")
    elsif @email.include?(" ")
      new_split = @email.split(" ")
    end 

    new_split.uniq 
   
  end 
  
end 