# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
	def initialize(string_addresses)
		@string_addresses = string_addresses
	end

	def parse
		# "avi@test.com, arel@test.com"
		res = @string_addresses.split(/,\s|\s/)
		# puts @string_addresses.inspect
		# puts res.inspect

		res.uniq
	end
end