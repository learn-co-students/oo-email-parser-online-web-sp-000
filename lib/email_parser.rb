require 'pry'
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :email_addresses
  
  def initialize(list)
    @email_addresses = list
    parse
  end
  
  def parse
    all_emails = @email_addresses.split(/, | /) # split by " " and ", "
    unique_emails = []
    
    all_emails.each do |email| # iterate over split emails and add them to unique_emails only if unique_emails doesn't already contain the email
      if !unique_emails.include?(email)
        unique_emails << email
      end
    end
    unique_emails
  end
  
end