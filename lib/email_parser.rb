class EmailAddressParser
  attr_accessor :emails

  def initialize(s)
    @emails = s
  end

  def parse
    @emails.split(/,?\s/).uniq
  end
end
