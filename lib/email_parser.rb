class EmailAddressParser

attr_accessor :email_list

def initialize(list)
  @email_list = list
end

def parse
  @email_list.scan(/\w+[@]\w+[.]\w+/).uniq
end

end
