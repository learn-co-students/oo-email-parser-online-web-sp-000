# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
    #reader, writer not to be modified.
    attr_accessor :string
    
    #keep track of string
    def initialize (string)
        @string = string            
    end

    #divide string by comma and space. Split string. Remove duplicates.
    def parse 
        @string.gsub(",", " ").split(" ").uniq
    end
end