# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser 
  attr_accessor :emails 
  def initialize(string="")
    @emails = string 
  end 
  
  def parse 
    results = [] 
    check = @emails.split(/[, ]{1,}/)
    check.each do |i|
      if !(results.include?(i))
        results << i 
      end 
    end 
    results 
  end 
end 