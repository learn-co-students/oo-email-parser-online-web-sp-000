# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'


class EmailParser
  attr_accessor :emails

  def initialize(string_of_emails)
    @string_of_emails = string_of_emails
  end

  def parse
    email_array = []

    email_array << @string_of_emails.split(" ")
    email_array.flatten!
    email_array.each_with_index do |string, index|
      email_array[index] = string.split(",")
    end
    @emails = email_array.flatten.uniq
    return @emails
  end
end
