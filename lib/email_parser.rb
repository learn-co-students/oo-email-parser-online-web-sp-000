# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
attr_accessor :emails

#requires to be initialized with a collection of emails
#create a new instance of parser
  #parser instances are created by passing collection of emails
#call the parse method on that instance of parser

  def initialize(email_list)
    @emails = email_list
  end

  def parse
    parsed_list = @emails.split(/[\s, ', ']/)
    parsed_list.delete_if{|a| a == ""}
    parsed_list.uniq
  end



end
