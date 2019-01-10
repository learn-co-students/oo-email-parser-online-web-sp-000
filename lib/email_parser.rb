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
    email_array = @emails.split(/\s|,/)
    parsed_array = []
    email_array.each do |email|
      if !parsed_array.include?(email) && email != ""
        parsed_array << email
      end
    end
    parsed_array
  end
end
