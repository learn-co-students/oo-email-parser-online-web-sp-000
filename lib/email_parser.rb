# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :unformated_list


  def initialize(list)
    @unformated_list = list
  end

  def parse
    email_list = []
    list = @unformated_list.split(/, | |,/)
    email_list = list.uniq
    email_list
  end


end
