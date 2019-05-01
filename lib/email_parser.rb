# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
attr_accessor :email_list

def initialize(email_list)
    @@email_list = email_list
end

def parse
#Take either comma separated list or white space separated list and split as elements of array
#Could use Regex but start with test for include(",") first
arr = []
# binding.pry
arr = @@email_list.split(/,\s|\s/)

#
# if @@email_list.include?(",")
#   arr = @@email_list.split(","||" ").collect{|i| i.strip}
# else
#   arr = @@email_list.split(" ")
# end

arr.uniq
end



end
