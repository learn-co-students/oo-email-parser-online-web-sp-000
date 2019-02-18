# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email
  @@all = []
  
  def initialize(email_list)
    @email = email_list
    @@all << self
  end

  def self.all
    @@all
  end

  def parse
      parsed = @email.split(/[\s,]/).reject(&:empty?).uniq
  end
end

