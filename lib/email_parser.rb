# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  @@all = []
  attr_accessor :email
  def initialize(list)
    @@all = list.split(/[\s,]/)
    @@all = @@all.reject { |c| c.empty? }
  end
  def parse
    @emailset = @@all
    @finalset = @emailset.uniq
    @finalset
  end


end
