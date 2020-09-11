# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :emails 

    def initialize(emails)
        @emails = emails
        #Sets the incidence/initialization variable to = the argument
        #EmailAddressParser(Class) dot new(emails go here as represented by 'emails' in the initialize line) 
        #dot parse, i.e. the method call below. 
    end 

    def parse
        array = @emails.split(/[,\s]/)
        #Uses the incidence/initialization variable as the string to be split by commas
        #That Regex key will remove commas and spaces, whether together or separate
        array.delete("")
        #Removes all the blank shit that we just put in the array instead of comma-spaces
        array.uniq
        #Removes duplicates
    end 
end 