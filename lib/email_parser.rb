# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :list 
  
  def initialize(list)
    @list = list
  end
  
  def parse
    split_list = @list.split.collect{|email| email.split(",")}
    email_list = split_list.flatten.uniq
  end
  
end
