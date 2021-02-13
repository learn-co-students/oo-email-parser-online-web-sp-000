require 'pry'
# Build a class EmailAddressParser that accepts a string of unformatted class EmailAddressParser
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#the class is what is responsible for the parsing - develop a class parser method 

class EmailAddressParser
   attr_accessor :emailparse 
   
   #:emailparse is the same thing as @emailparse
   #initialize after each email is added to the list
    def initialize(emailparse)
      @emailparse = emailparse
    end 

    #the CLASS is responsible for parsing, not each individual instance email 
    def parse
      #this regex is from google
      #.uniq makes sure they're unique 
      @emailparse.split(/,?\s/).uniq
    end 
end 





#     #split the CSV data into an array of individual rows
      # rows = @emails.split('\n')
      #     #for each row, collect an email instance based on the data
      # emails = rows.collect do |row|
      #     #split the row using CSV OR Whitespace “,”
      # data = @emails.split("/,/") || @emails.split(" ").collect {|i| i}.join("")
      # # #I want to iterate over the list of email_addresses and return only unique emails 
      # @emails.to_a.uniq { |email_addresses| email_addresses[:emails] }

