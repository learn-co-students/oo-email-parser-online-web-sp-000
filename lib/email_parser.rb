# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser


  attr_accessor :email_addresses # First, we use attr_accessor to create our get and set methods.

  def initialize(email_addresses) # Second, we initialize our string of emails.
    @email_addresses = email_addresses
  end

  def parse # Third, in our parse method, we call our string of emails and delete the commas between the emails.
    email_addresses.delete(',').split.uniq # Then we use .split to take each email and place it in an array, separating each email with a comma.
  end # Finally, we use .uniq to go through our array and remove any duplicate emails.

end
