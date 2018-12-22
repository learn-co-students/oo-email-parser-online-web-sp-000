# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  @@mail_list = []

def initialize(emails)
  @emails = emails
end

def parse
  filtered_and_parsed = []
  parsed_list = @emails.split(/[[\, ] \s]/)
  parsed_list.delete('')
  parsed_list.each do |email|
    if filtered_and_parsed.include?(email) == false 
      filtered_and_parsed << email
    end
  end
    return filtered_and_parsed
end
  
  
end