# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    if @emails.include?(',')
      @emails = @emails.split(' ').collect{ |e| e.chomp(',') }
      @emails.uniq
    else
      @emails = @emails.split(' ')
      @emails.uniq
    end
  end

  #alternative solution
  # def parse
  #   @emails = @emails.gsub(",", "").split(" ")
  #   @emails.uniq 
  # end   
end

emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"