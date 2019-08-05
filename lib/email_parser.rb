# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser
  attr_accessor :email_addresses_list

  def initialize(email_addresses)
    self.email_addresses_list = email_addresses
  end

  def parse
    self.email_addresses_list.split(/[,\s]+/).uniq
    #collection.collect{|n| n.strip}
  end

end
