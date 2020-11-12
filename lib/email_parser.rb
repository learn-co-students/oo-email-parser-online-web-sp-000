# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
attr_accessor :name
@@all= []

def self.all
  @@all
end

def initialize(name)
  @name = name
  @@all << self
end


def parse
self.name.split.collect do |address|
  address.split(',')
end
.flatten.uniq

end


end

