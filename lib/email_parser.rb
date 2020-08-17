# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser
    attr_reader :csv_data #call attr reader then anaylize if needs a writer. 

    def initialize(csv)
        @csv_data = csv
    end


    def parse
       # binding.pry
        #both csv_data & @csv_data are available but the getter should be used.
        csv_data.split(/, | /).uniq  #[] square brackets used as or notation in regex
      end
    end