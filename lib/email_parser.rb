# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(email_list)
    @email_list = email_list
  end

  attr_accessor :email_list

  def parse
    mode1 = @email_list.split(" ")
    mode2 = []
    mode1.each do |str|
      if str.include? ","
        str = str.chop
        mode2.push(str)
      else
        mode2.push(str)
      end
    end
    mode3 = mode2.uniq
    mode3

  end


end
#
# msg = EmailAddressParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")
# msg.parse
