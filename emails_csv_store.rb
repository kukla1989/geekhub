require './mailbox_html'
require './mailbox'
require 'csv'
class EmailsCsvStore
  def initialize(filename)
	@filename = filename
  end
  
  
  def read
	emails = []
	hash = Hash.new
	csv = CSV.read(@filename)
	for i in 1..csv.length - 1 do
		hash[:Date] = csv[i][0]
		hash[:From] = csv[i][1]
		hash[:Subject] = csv[i][2]
		emails.push hash
		hash = {}
	end
	puts emails[2][:From]
	emails
  end


end


store = EmailsCsvStore.new('emails.csv')
emails = store.read
#mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(emails)
formatter.format
