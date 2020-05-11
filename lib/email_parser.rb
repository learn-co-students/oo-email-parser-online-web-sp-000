require 'pry'
class EmailAddressParser

attr_accessor :emails

  def initialize(email)
    @email = email
  end

  def parse
    a = @email.split(/, | /)
a.uniq!

  a

  end

end

# # Build a class EmailParser that accepts a string of unformatted
# # emails. The parse method on the class should separate them into
# # unique email addresses. The delimiters to support are commas (',')
# # or whitespace (' ').
# require 'pry'
# class EmailAddressParser
#
# attr_accessor :emails
#
#
#
#
# def initialize(email)
#       @email = email
#       @emails << @email
# end
#
#
# def parse
#   # binding.pry
#   array = []
#   array_two = []
#   array_three = []
#   # @@all.each do |i|
#   #   array << i.name
#   # end
#    @email.each do |i|
#       o = 0
#       num = i.scan(", ")
#     while o < num.length
#       array_two = i.split(", ")
#       o += 1
#     end
#   end
#     array_two.each do |i|
#         o = 0
#         binding.pry
#         index = array_two.length
#         num = i.scan(" ")
#         while o < num.length
#           array_two[index] = i.split(" ")
#           o += 1
#         end
#     end
#      array_two.map do |e|
#         i = array_two.count(e)
#           if i > 1
#           array_two << array_two.delete(e)
#           end
#       end
#   array_two
# end
# end
