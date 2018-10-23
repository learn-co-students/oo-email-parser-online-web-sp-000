# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails_to_be_parsed

  def initialize(emails)
    @emails_to_be_parsed = emails
  end

  def parse
    @emails_to_be_parsed.gsub(",", "").split(" ").uniq
  end
end
