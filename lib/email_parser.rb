# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_address

  def initialize(email_address)
    @email_address = email_address
  end

  def parse
    split_emails = @email_address.split.collect { |email| email.split(',') }
    split_emails.flatten.uniq
      end
    end

