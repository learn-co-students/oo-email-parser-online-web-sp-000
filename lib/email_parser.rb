# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

    attr_accessor :email_list

    def initialize(emails)
        @email_list = emails
    end

    def parse
        email_array = @email_list.split(/[, ]/).uniq
        email_array.reject! {|element| element.empty?}
        email_array
    end

end
