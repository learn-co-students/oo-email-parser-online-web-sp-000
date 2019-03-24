class EmailParser
  
  @@emails = []
  
  def initialize(email)
    EmailParser.parser(email)
  end
  
  def self.parser(email)
    emails = email.split(", ")
    emails.each {|email| @@emails << email}
    print @@emails
  end 
  
end


EmailParser.new("sdc@gmail.com, lec@gmail.com").parser


