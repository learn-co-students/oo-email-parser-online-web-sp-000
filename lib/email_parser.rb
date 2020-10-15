# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

  def initialize(list)
    @list = list
  end

  def parse
    array = @list.split(/(,\s)|(\s)/)
    array.delete_if{|e| e.length <= 2 }

    if array.uniq.length == array.length
      array
    else
      array.uniq!
      array
    end
  end

end
