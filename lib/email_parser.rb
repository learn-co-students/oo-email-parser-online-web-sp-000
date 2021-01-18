
class EmailAddressParser

  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    #separated email addresses, but no duplicates
    formatted_list = @email_addresses.split(/(?:, )|[, ]/)
    return formatted_list.uniq
  end

end

#regex explained: asking for (a comma and a space) OR [a comma or a space]
#when using (), it will provide a matching group which adds it onto the array
#in this case, we want to ignore that so adding ?: tells it that it is not matching
