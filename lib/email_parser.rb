class EmailAddressParser
  attr_accessor :emails
  emails = []
  def  initialize(emails)
    @emails = emails
  end
  def parse
    emails = @emails.split(/[,\s]+/).uniq
    emails
  end
end

# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
