class MailboxHtmlFormatter

def initialize ( mailbox)
    @mailbox = mailbox
	
end

def format

f = File.new 'emails.html', 'w'
File.open("emails.html", "w+") { |file| file.write(
"<html>
 <head>
   <style>
     table {
       border-collapse: collapse;
     }
     td, th {
       border: 1px solid black;
       padding: 1em;
     }
   </style>
 </head>
 <body>
   <h1>Ruby Study Group</h1>
   <table>
     <thead>
       <tr>
         <th>Date</th>
         <th>From</th>
         <th>Subject</th>
       </tr>
     </thead>
     <tbody>
       <tr>
         <td>#{@mailbox[0][:Date]}</td>
         <td>#{@mailbox[0][:From]}</td>
         <td>#{@mailbox[0][:Subject]}</td>
       </tr>
       <tr>
         <td>#{@mailbox[1][:Date]}</td>
         <td>#{@mailbox[1][:From]}</td>
         <td>#{@mailbox[1][:Subject]}</td>
       </tr>
       <tr>
         <td>#{@mailbox[2][:Date]}</td>
         <td>#{@mailbox[2][:From]}</td>
         <td>#{@mailbox[2][:Subject]}</td>
       </tr>
     </tbody>
   </table>
 </body>
</html>")}
end
end

=begin
 require './mailbox'	
 emails = [
 Email.new("Homework this week ", { date: "24-10-2018 ", from: "Ferdous" }),
 Email.new("Keep on coding!", { date: " 24-10-2018", from: "Dajana" }),
 Email.new("Re: Homework this week", { date: "24-10-2018", from: "Ariane" }),
 ]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox.result)
formatter.format
=end






















