
class EmailAddressParser

  attr_accessor :email_addresses

  def initalize (email_addresses)
    #separated email addresses
    @email_addresses = email_addresses
    formatted_list = email_addresses.split(/[,| ]/)
    return formatted_list
  end

  def parse
    #separated email addresses, but no duplicates
    @email_addresses = email_addresses
    formatted_list = email_addresses.split(/[,| ]/)
    return formatted_list.uniq
  end

end
