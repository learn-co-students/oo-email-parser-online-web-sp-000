# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#starts the EmailParser class 
class EmailParser 
attr_accessor :emails

#gets initialized with a string of emails 
def initialize(emails)
  @emails = emails
end 

#class needs mail.parse to make a useful array
def parse 
parsed = @emails.split(/,\s|,|\s/).uniq
end

end 