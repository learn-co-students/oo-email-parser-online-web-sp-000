# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    whitespace_removed = email_addresses.gsub(" ",",")
    email_address_array = whitespace_removed.split(",")

    parsed_emails = []
    email_address_array.each do |email|
      if email.empty? == false
        parsed_emails.push(email)
      end
    end
    parsed_emails.uniq
  end
end

# a = EmailAddressParser.new("avi@test.com arel@test.com")
# a.parse
