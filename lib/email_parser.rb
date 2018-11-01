class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split(/[, ]+/).uniq
    # emails.split(", ").uniq
    # emails.split(/[,\s]+/).uniq
  end
end