# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor 
  attr_reader :email_list
  
  EMAILS = []
  
  def initialize(string)
    @email_list = string
  end 
  
  def parse 
    @email_list.split(/, | /).uniq.each do |email|
      EMAILS << email 
    end 
  end 
end 