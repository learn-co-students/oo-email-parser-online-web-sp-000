class EmailAddressParser
  attr_accessor :email_addresses
  
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
    
  def parse
    @email_addresses.split.map do |email|
      email.split(",")
    end
    .flatten.uniq
  end
  
end