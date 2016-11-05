require 'rubygems'
require 'twilio-ruby'

puts 'Ask the 8 ball a question!'
question = gets.chomp

def fortune
  ['It is certain.',
   'It is decidedly so.',
   'Without a doubt.',
   'Yes, definitely.',
   'You may rely on it.',
   'As I see it, yes.',
   'Most likely.',
   'Outlook good.',
   'Yes.',
   'Signs point to yes.',
   'Reply hazy try again.',
   'Ask again later.',
   'Better not tell you now.',
   'Cannot predict now.',
   'Concentrate and ask again.',
   "Don't count on it.",
   'My reply is no.',
   'My sources say no.',
   'Outlook not so good.',
   'Very doubtful.'].sample
end

account_sid = 'XXXXXXXXXXX'
auth_token = 'XXXXXXXXXX'

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  from: '+49XXXXXXXXX',
  to: '+49XXXXXXXXX',
  body: fortune
)

puts message.to
