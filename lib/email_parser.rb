# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  @@emails = []

  def initialize(string)
    @unparsed = string
  end

  def parse
    if @unparsed.match(/,? /)
      @@emails = @unparsed.split(/,? /).uniq
    end
  end


end
