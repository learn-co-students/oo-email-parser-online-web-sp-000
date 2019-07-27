# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
attr_accessor :email

  def initialize(email)
    @data = []
    @data = email.split(/ |, |,/)
  end

  def all
    @data
  end

  def parse
    all.uniq
  end
end
