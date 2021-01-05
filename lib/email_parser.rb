class EmailAddressParser
  attr_reader :emails

  def initialize(emails)
   @emails = emails
 end

 def parse
   emails.split(/,?\s/).uniq
 end

end
