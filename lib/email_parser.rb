# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email

  def initialize(emails)
    @email = emails
  end

# parse method uses the @email variable to split the emails with "," or " " using a regex expression and return the unique values, then rejects any empty values, finally returning the array of unique emails.
  def parse
    email_array = @email.split(/[, ]/).uniq
    email_array.reject!{|element| element.empty?}
    return email_array
  end
end
