require "pry"
  class EmailAddressParser

  attr_accessor :email_addresses
    def initialize(email_addresses)
        @email_addresses = email_addresses

        @@parser = []
    def self.parser
      @@parser
    end

  def parse
    # binding.pry
    @@parser = @email_addresses.split(/, | /).uniq
    end
  return @@parser
  end
end
