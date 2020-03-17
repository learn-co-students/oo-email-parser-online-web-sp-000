class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @addresses = email_addresses
  end

  def parse
    @addresses.delete(",").split(" ").uniq
  end

end
