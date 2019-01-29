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
    arr = self.emails.split(/\s+|,\s*/)
    arr.uniq
  end
end



# rspec ./spec/email_parser_spec.rb:3 # EmailParser #parse parses CSV emails
#rspec ./spec/email_parser_spec.rb:7 # EmailParser #parse parses space delimited emails
#rspec ./spec/email_parser_spec.rb:11 # EmailParser #parse parses both CSV and space delimited emails
#rspec ./spec/email_parser_spec.rb:16 # EmailParser #parse parses and removes duplicate emails
