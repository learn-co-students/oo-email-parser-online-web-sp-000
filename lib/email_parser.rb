class EmailAddressParser
  attr_accessor :email_addresses
 
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  def parse
    x = @email_addresses.split(/[,\s]/)
    parsed_array = []
    x.each do |email_address|
      if !parsed_array.include?(email_address) && !(email_address == "")
        parsed_array << email_address
      end
    end
    parsed_array
  end
  
end
