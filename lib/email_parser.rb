# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :list_emails

  def initialize(file)
    @list_emails = file
  end


  def parse
    @emails = @list_emails.split(/[,,\s]/)
    @emails = @emails.map! {|email| email if email != ""}.compact
    @emails.uniq
  end
end
