# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails

  end

  def parse
  @emails = emails.split(/, |\s/)

    @emails = emails.uniq

  end

end

#/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
#def parse
    #@emails = @emails.gsub(/,/, "")
  #  @emails = @emails.split(" ")
  #  @emails.uniq
  #end
