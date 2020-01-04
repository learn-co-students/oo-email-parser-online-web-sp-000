# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

  # initialize with a list of email addresses either separated with spaces or with commas
  # ex argument: "avi@test.com, arel@test.com"
  def initialize(emails)
    @emails = emails.split(/[\s,]+/)
  end

  # parse string of email addresses into array
  # return only unique email addresses
  def parse
    @emails.uniq
  end


end
