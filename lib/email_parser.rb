# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :email_string
  
  def initialize(string)
    @email_string = string
  end
  
  def parse
    email_array = self.email_string.split(",").map do |email|
      email_stripped = email.strip
      sub_email_array = email_stripped.split(" ")
      if sub_email_array.length > 1 
        sub_email_array.map do |sub_email|
          sub_email.strip
        end
      else
        email_stripped
      end
    end
    email_array.flatten.uniq
  end
  
end