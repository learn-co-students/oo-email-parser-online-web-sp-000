# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initialize (email_string)
    @email_string = email_string
  end

  def parse
    email_array = @email_string.split(/\,|\ /)
    email_array.delete_if {|e| e.size < 1}
    final_email_array = []
    email_array.each do |e|
      final_email_array << e if !final_email_array.include?(e)
    end
    final_email_array
  end
end
