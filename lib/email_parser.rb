require 'pry'
# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(csv_file)
    @csv_file = csv_file
  end

  def parse
    @csv_file = @csv_file.gsub(/[,]/,"")
    @emails = @csv_file.split(" ").uniq
  end
end
