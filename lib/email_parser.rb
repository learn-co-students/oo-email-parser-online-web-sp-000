
class EmailParser 
  
  attr_accessor :emails 
  
  def  initialize(emails)
    @emails = emails
  end
  
  def parse
    list = emails.split(/[ ,]+/).uniq 
    list
  end 
  
end 
