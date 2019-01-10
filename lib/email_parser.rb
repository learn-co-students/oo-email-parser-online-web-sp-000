class EmailParser
  
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end

  def parse 
    parsed = @emails.split(/[\s,]/)
    parsed.delete_if { |email| email == "" }
    parsed.uniq
  end
  
end


