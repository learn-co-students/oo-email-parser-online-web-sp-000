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
    #binding.pry 
    if @email.include?(", ") 
      new_split = @email.split(", ")
       new_split.map do |email| 
         if email.include?(" ")
           #binding.pry
          email = email.split(" ")
         end 
       end 
       binding.pry
    end 
  end 

   
end 