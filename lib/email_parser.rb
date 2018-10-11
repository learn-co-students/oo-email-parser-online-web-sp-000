# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    result = []
    items = emails.split(" ")
    items.each do |address|
      if address[address.length - 1] == ","
        address.chop!
      end
    end
    result.push(items)
    result.flatten.uniq
  end

end
