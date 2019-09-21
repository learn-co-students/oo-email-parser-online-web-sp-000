# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :string, :email

  @@emails = []
  
  def initialize(string)
    @@emails.clear
    arrayString = string.split(" ")
    arrayString.each do |i|
      if i[-1] == ","
        @email = i.tr(",", "") 
        @@emails << i.tr(",", "")
      else
        @email = i
        @@emails << i
      end
    end
  end
      
  def parse
    emailArray = []
    @@emails.each do |i|
      if !(emailArray.include?(i))
        emailArray << i
      end
    end
    emailArray
  end

end

print EmailAddressParser.new("avi@test.com, avi@test.com").parse

# email_addresses = "avi@test.com, avi@test.com" #"avi@test.com, arel@test.com"# "avi@test.com arel@test.com"

# parser = EmailAddressParser.new(email_addresses)

# print parser.parse