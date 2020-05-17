# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email

  def initialize(emails)
    @email = emails
  end

  def parse
    email.split(/, | /).uniq
  end
end

# avi_test = EmailAddressParser.new("avi@test.com arel@test.com")
# email_addresses = EmailAddressParser.new("john@doe.com, person@somewhere.org")
# double = EmailAddressParser.new("avi@test.com, avi@test.com")
# space_email = EmailAddressParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")
