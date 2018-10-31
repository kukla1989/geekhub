class Email
	require 'csv'
	def initialize (subject, headers)
	    @headers = headers
		@subject = subject
	end
	
	def result
	    hash = {Date: @headers[:date], From: @headers[:from], Subject: @subject }
	end 
	
	
	def add		
	    CSV.open("emails.csv", "w") do |csv|
		csv << [@headers[:date], @headers[:from], @subject]
		end

	end
end

#email = Email.new("Homework this week", {date: "24-10-2018", from: "Vova1" })
#puts email.result
