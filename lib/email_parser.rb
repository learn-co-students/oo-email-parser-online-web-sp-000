# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :email_array
  
  def initialize (emails)
    @email_array = emails.split(/( |,)/)
    @email_array.reject! {|email| email !~ /\w+@\w+.\w+/}
  end
  
  def parse
    @email_array.uniq
  end
  
end