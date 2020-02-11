# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
  attr_reader :but_her_emails

  def initialize(but_her_emails)
    @but_her_emails = but_her_emails
  end

  def parse
    but_her_emails.split(/, | /).uniq
  end
end
