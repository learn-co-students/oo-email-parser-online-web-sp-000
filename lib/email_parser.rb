# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails, :list
  def initialize(str)
    @list = str
  end

  def parse
     @list.split(/[,+\s||\s]/).reject {|x| x.empty? }.uniq
  end

end

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)
puts parser.parse
