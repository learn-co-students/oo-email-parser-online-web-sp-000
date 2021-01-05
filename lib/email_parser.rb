# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
#You will be writing an EmailAddressParser class that gets initialized with a string of emails.

# Your job is to parse those email addresses into a useful array using an instance method, parse.
#
# I should be able to do this:
#
# email_addresses = "john@doe.com, person@somewhere.org"
# parser = EmailAddressParser.new(email_addresses)
#
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]
# You should be able to initialize with a list of email addresses either separated with spaces or separated with commas. The parse method should, additionally, only return unique addresses.
#
# Instructions
# This lab is test-driven, so run the test suite to get started and use the test output to get the program working.
#
# Hints:
#
# How will you control for parsing a list of email addresses that is either comma separated or separated by a white space?
# Use an attr_accessor to set and get the list of email addresses
# class needs to take in an email address list, separate the individual emails as an array, separating using whitespace or commas
# EmailAddressParser is going to take the string, parse the emails by whitespace/comma and return an array of the results. EAP has to accept a string as its argument.
# EAP MUST return an array. EAP doesn't have an argument to accept. It's a class. parser would be what accepts the argument. Initialize with the strings.
class EmailAddressParser
  def initialize(string)
    @string = string
  end
  def parse
    @string.split(/\,\s|\s/).uniq
  end
end
