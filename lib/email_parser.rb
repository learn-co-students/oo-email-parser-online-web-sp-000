# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :lista_correos

    # email_addresses = "john@doe.com, person@somewhere.org"

    def initialize(lista_correos)
        @lista_correos = lista_correos
    end


    def parse

        @lista_correos.split(/, | /).uniq 
       

    end


end
