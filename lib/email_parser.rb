# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser(str)
  attr_accessor :email_addresses

  @@ALL_EMAILS = []

  def initialized
    @email_addresses
  end

  def parser(email_addresses)

    @email_addresses = cvs_emails
  end


end
