# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  
def parse
  puts splitEmail = emails.split.collect {|address| address.split(',')} 
  email_addresses = splitEmail.flatten.uniq
  email_addresses
 end
 def initialize(emails)
  @emails = emails
 end 
end
 
 
