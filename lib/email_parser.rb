# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  @@all = []
  attr_accessor :list

  def initialize(unformatted)
    @list = unformatted
  end

  def parse
    @@all.clear
    bits = @list.split(/[, ]/)
    bits.each {|x| x.strip!}
    bits.each {|y| @@all << y if !@@all.include?(y)&&y!=""}
    return @@all
  end
end
