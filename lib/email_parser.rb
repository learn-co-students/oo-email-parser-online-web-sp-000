# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  split_list = []

  def parse
    #1. accept emails
    #2. use .split to separate discrete addresses
    #3. return array of unique split addresses
    split_list = emails.split(/, | /).uniq
  end

end
