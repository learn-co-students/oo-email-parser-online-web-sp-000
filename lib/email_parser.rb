class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  def parse
    email = email_addresses.split(/\,|\s/).reject{|s| s==""}
    email.uniq
  end
end