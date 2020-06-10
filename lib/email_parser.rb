# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    @@csv = []
    def initialize(csv)
        
        @@csv = csv
        parse
    end
    def parse
        if @@csv.include?(" ") && @@csv.include?(", ")
            @@csv = @@csv.split(", ")
            #binding.pry
            @@csv = @@csv.map do |email|
                email.split(" ")
            end
            @@csv = @@csv.flatten
        elsif @@csv.include?(", ")
            @@csv = @@csv.split(", ")
            @@csv
        else
            #binding.pry
            if @@csv.include?(" ")
                @@csv = @@csv.split(" ")
                @@csv
            end
            
        end
        @@csv = @@csv.uniq
        @@csv
    end
end