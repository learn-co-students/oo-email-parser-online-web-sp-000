# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails=emails
  end

  def parse
    new_array=[]
    array = emails.split(/, | /).uniq
    array.each {|email| new_array << email}
    new_array = new_array.uniq
  end

end
