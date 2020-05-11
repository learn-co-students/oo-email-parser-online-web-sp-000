# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :parsed_email_addresses
    attr_reader :init_email_addresses

    def initialize(email_addresses)
        @init_email_addresses = email_addresses
    end

    def parse
        @parsed_email_addresses = []
        split_email_addresses = @init_email_addresses.split(" ")
        split_email_addresses.each {|email| @parsed_email_addresses << email.chomp(",")}
        @parsed_email_addresses.uniq
    end    
end