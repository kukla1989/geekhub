require './email'

class  Mailbox
	def initialize ( name, emails )
	    @name = name
		@emails = emails
	end

	
	def result
	    array = []
        @emails.each {|email| array.push(email.result)  }
		array
	end

end

#require './mailbox'
 #emails = [
 #Email.new("Homework this week ", { date: "24-10-2018 ", from: "Ferdous" }),
 #Email.new("Keep on coding!", { date: " 24-10-2018", from: "Dajana" }),
 #Email.new("Re: Homework this week", { date: "24-10-2018", from: "Ariane" }),
#]
# mailbox = Mailbox.new("Ruby Study Group", emails)
 #mailbox.result
