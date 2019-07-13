# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  @email_array = []

  def initialize(emails)
    @emails = emails
  end

  def parse
    @email_array = @emails.split(/(,| )/).delete_if{ |email| email.length < 3}.uniq
    @email_array
  end



  #def initialize(emails)
  #  @email_array = emails.split(/(,| )/)
  #  @email_array
  #end



  #I want to split emails via both "," and " "

  #I want to remove duplicates

end
