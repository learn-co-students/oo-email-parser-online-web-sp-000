class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails=emails
  end

  def parse
    #@emails=@emails.gsub(/[\s,]/ ," ").split
    #@emails.uniq
    #or
    array=@emails.split(/[, ]/).uniq
    array.reject! {|i| i.empty?}
    array
  end

end
