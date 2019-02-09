# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  @@email_list = []

  def initialize(emails)
    @emails = emails
  end

  def parse
    split_csv = @emails.split(/[ ,]/)
    split_csv.reject! {|string| string.nil? || string.strip.empty? }
    split_csv.uniq!
    split_csv.each {|email| @@email_list << email}
  end
end
