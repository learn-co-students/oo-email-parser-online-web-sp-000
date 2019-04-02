class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    emails_array = emails.split(/[\s,]/)
    emails_array.delete("")
    emails_array.uniq
  end
end