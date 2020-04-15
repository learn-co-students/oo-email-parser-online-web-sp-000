# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
#I don't know how to use the OR function in Regex so remove commas, then spaces
  def parse
    @email.split(/,/).join.split(" ").uniq
  end
#from the solution - this is how you implement OR in Regex
#  def parse
#    emails.split(/, | /).uniq
#  end


  def initialize(email)
    @email = email
  end

end
