# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

  attr_accessor :listOfEmails

  def initialize(listOfEmails)
    @listOfEmails = listOfEmails
  end

  def parse
    newList = @listOfEmails
    newList = newList.split(" ")
    i = 0
    newList.each do | email |
      if email.include?(",")
        email = email.chomp(",")
        newList[i] = email
        #binding.pry
      end
      i += 1
    end
    returnList = []
    newList.each do | email |
      if !(returnList.include?(email))
        returnList << email
      end
    end
    return returnList
  end

end
