# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :emails

  def initialize (emails)
    @emails = emails
  end

#  def parse                        #solution without regext
#    @emails.gsub(","," ").split.uniq     #substitute whitespace for commas, then split
#  end

  def parse
    @emails.split(/[,\s]+/).uniq   #regex: comma, whitespace, one or more of the preceding
  end

end
