# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
  
  @@all = []
  
  attr_accessor :list
  
  def initialize(list)
    @list = list
  end
  
  def parse
    @list.split(",").join(" ").split(" ").uniq
  end

#binding.pry

#EmailAddressParser.new("avi@test.com, arel@test.com").parse
end