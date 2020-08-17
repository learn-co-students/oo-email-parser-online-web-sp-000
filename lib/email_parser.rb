# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :csv_data

    def initialize(csv)
        @csv_data = csv
    end


    def parse
        email_array = @csv_data.split(/[, ]/).uniq
        email_array.reject! {|element| element.empty?}
        email_array
      end
    end