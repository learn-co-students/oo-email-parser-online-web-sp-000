# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails=emails
    end

    def parse
        emails.split(/, | /).uniq
    end
end

# parses CSV emails
# parses space delimited emails
# parses both CSV and space delimited emails
# parses and removes duplicate emails