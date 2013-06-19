
require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here
#account_sid = APP_CONFIG['account_sid']
#auth_token = APP_CONFIG['auth_token']
# Remove it from rails app
account_sid = 'ACd9b928a428a6c2f4b6f9a55554367d8d'
auth_token = '82771744e19482ef9150c05400db93b3'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

# send an sms
@client.account.sms.messages.create(
  :from => '+14843348688',
  :to => '+14846325324',
  :body => 'Hey there! from Kashyap from ruby twilio'
)
