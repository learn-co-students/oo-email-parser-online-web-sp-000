# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :unformatted
  def initialize(unformatted_email)
    @unformatted = unformatted_email
  end

  def parse
    emails = @unformatted.split(/(?:,\s|\s)/)
    emails = emails.uniq
  end
end
