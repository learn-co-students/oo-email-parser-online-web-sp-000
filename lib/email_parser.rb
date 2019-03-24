# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'


class EmailParser
  attr_accessor :csv_emails

  def initialize(csv_emails)
     @csv_emails = csv_emails  ##w/o returns object w/o emails attribute
  end
  
  def parse
    self.class.parse(@csv_emails)
  end
  
  def self.parse(csv_emails) ## should use regular expression here 
    csv_emails_array = csv_emails.split(", ")
    csv_emails_string = csv_emails_array.join(" ")
    parsed_csv_emails_array = csv_emails_string.split(" ")
    parsed_csv_emails_array.uniq
  end 

end
=begin 
  
@@people = []
  
  def initialize(emails)
    @emails = emails
  end 
  
  def parse
  def self.parse(emails)
    
    email_array = emails.split(", ")
    
    email_array.each do |email|
      person = EmailParser.new
      person.email = email 
      @@people << person
    end 
  end
  # EmailParser.people 
end

  

  def initialize(csv_emails) ## initialize is a pre-defined ruby method = className.new 
    # binding.pry 
    EmailParser.parse(csv_emails) ## tried to call class method which parsed email string into an array
    @emails_array 
  end  ## initialize method couldn't succesfull call parse, name error
  
  def self.create
    emails = EmailParser.new
    @@emails << emails
  end
  
  def self.parse(csv_emails)
    @emails_array = csv_emails.split(", ")
    binding.pry 
    # emails_array.each  {|email| @@emails << email}
    @emails_array
  end 
    

  
  
  def self.new_by_name(name)
    song = Song.create
    song.name = name
    # binding.pry ## lesson learned:  binding.pry hi-jacks return when placed at end of code 
    song 
  end
    
    ## I don't understand Class.new(arg).method syntax, getting method error for parse.  Also modified test to reduce the complexity and return an object but not the array of emails.  Am I initializing the object with parse or is it initializing then parsing 
  end 
  
end
=end 