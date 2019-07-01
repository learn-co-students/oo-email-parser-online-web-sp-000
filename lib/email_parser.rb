# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

  attr_accessor :emails        #setter/getter

  def initialize(emails)
    @emails = emails          #initialize instance variable emails
  end

  #split, Divides str into substrings based on a delimiter, returning an array of these substrings.
  #splits argument of the character in the string on which you want to split it (comma, whitespace)
  def parse
    @emails.split(/, | /).uniq        #unique call. #split commas or whitespace
  end
end
