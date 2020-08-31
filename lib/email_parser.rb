class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    email_addresses.split(/[,\s]+/).uniq #parse addresses separated by comma or white space
  end
end
