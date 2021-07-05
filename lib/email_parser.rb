# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
  attr_accessor :info
  
  def initialize(info)
    @info = info
  end 
  
  def parse 
    parse = @info.gsub(",", ' ').split.uniq
    parse
  end 
  
end 