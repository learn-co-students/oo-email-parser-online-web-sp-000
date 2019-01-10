# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end
  def parse
    if (@emails.include?(",") && @emails.include?(" "))
      @emails = @emails.gsub(" ", ",")
      parsed = @emails.split(",")
    elsif (@emails.include?(","))
      parsed = @emails.split(",")
    elsif (@emails.include?(" "))
      parsed = @emails.split
    end
    email_list =[]
    parsed.each {|email| email_list << email.strip}
    email_list.delete("")
    return email_list.uniq
  end

end
