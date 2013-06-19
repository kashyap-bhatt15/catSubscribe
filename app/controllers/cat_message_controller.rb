class CatMessageController < ApplicationController
  def sendtext
		account_sid = 'ACd9b928a428a6c2f4b6f9a55554367d8d'
		auth_token = '82771744e19482ef9150c05400db93b3'

		# set up a client to talk to the Twilio REST API
		if params[:message]
			@client = Twilio::REST::Client.new account_sid, auth_token

			# send an sms
			@client.account.sms.messages.create(
				:from => '+14843348688',
				:to => "#{params[:message][:number]}",
				:body => "#{params[:message][:message]}"
			)
			end
		end
end
