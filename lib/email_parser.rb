require 'pry'

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addresses
    
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        
        # split_by_comma = @email_addresses.split(",")
        # split_by_comma.split(" ")

        parsed_emails = @email_addresses.split(/, | |,/)

        # if @email_addresses.include?(",")
        #     parsed_array1 = @email_addresses.split(", ")
            
        # elsif @email_addresses.include?(",") == false
        #     parsed_array2 = @email_addresses.split(" ")
        # end
        # binding.pry
        unique_emails = parsed_emails.uniq
        unique_emails
    end
    # binding.pry
end